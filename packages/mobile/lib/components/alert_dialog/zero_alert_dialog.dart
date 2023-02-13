import 'package:flutter/material.dart';
import 'package:zero_ui_mobile/zero_ui_mobile.dart';

class ZeroAlertDialog {
  /// private construnctor to make this a singleton class
  ZeroAlertDialog._();
  static final ZeroAlertDialog _instance = ZeroAlertDialog._();
  factory ZeroAlertDialog() => _instance;

  /// The overlay entry that will be used to show the dialog
  OverlayEntry? _overlayEntry;

  /// method to show the dialog
  void show(
    BuildContext context, {
    /// title of the dialog
    /// is required
    required String title,

    /// content of the dialog
    /// is required
    required String content,

    /// if the dialog is dismissible by tapping outside the dialog
    /// default is true
    bool barrierDismissible = true,

    /// color of the barrier
    /// default is Colors.black54
    Color barrierColor = Colors.black54,

    /// text style of the title
    TextStyle? titleStyle,

    /// text style of the content
    TextStyle? contentStyle,

    /// actions of the dialog (buttons)
    List<Widget> actions = const [],

    /// alignment of the actions
    /// default is MainAxisAlignment.end
    MainAxisAlignment actionsAlignment = MainAxisAlignment.end,

    /// image of the dialog
    /// this will be shown above the title
    Image? image,

    /// list items of the dialog
    /// this will be shown below the content
    List<Widget> listItem = const [],

    /// padding of the actions
    /// default is const EdgeInsets.only(bottom: 16, right: 16, left: 16)
    EdgeInsetsGeometry actionsPadding = const EdgeInsets.only(bottom: 16, right: 16, left: 16),
    EdgeInsetsGeometry? titlePadding,
    EdgeInsetsGeometry? contentPadding,
    double elevation = 4,

    /// background color of the dialog
    /// default is based on the theme background color
    Color? backgroundColor,

    /// alignment of the dialog
    /// default is based on the theme alignment
    AlignmentGeometry? alignment,

    /// shape of the dialog
    /// default is based on the theme shape
    ShapeBorder? shape,
  }) {
    /// if the dialog is already shown, return
    if (_overlayEntry != null) return;

    /// create the overlay entry
    _overlayEntry = OverlayEntry(builder: (context) {
      /// create the dialog theme based on the context theme
      DialogTheme dialogTheme = context.theme.dialogTheme.copyWith(
        backgroundColor: backgroundColor,
        elevation: elevation,
        shape: shape,
        alignment: alignment,
        titleTextStyle: titleStyle,
        contentTextStyle: contentStyle,
        actionsPadding: actionsPadding,
      );

      /// barrier widget that will be shown behind the dialog
      /// if the dialog is dismissible, it will call the hide method
      /// if the dialog is not dismissible, it will do nothing
      Widget barrier() {
        return GestureDetector(
          onTap: () => barrierDismissible ? hide() : {},
          child: Container(
            color: barrierColor,
            height: double.infinity,
            width: double.infinity,
          ),
        );
      }

      return Stack(
        clipBehavior: Clip.none,
        fit: StackFit.passthrough,
        children: [
          barrier(),
          AlertDialog(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (image != null) ...[
                  SizedBox(
                    width: image.width ?? double.infinity,
                    child: image,
                  ),
                  const SizedBox(height: 20),
                ],
                Text(
                  title,
                  style: dialogTheme.titleTextStyle,
                ),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  content,
                  style: dialogTheme.contentTextStyle,
                ),
                if (listItem.isNotEmpty) ...[
                  const SizedBox(
                    height: 16,
                  ),
                  ...listItem
                ],
              ],
            ),
            actions: actions,
            titlePadding: titlePadding,
            contentPadding: contentPadding,
            actionsAlignment: actionsAlignment,
            alignment: dialogTheme.alignment,
            backgroundColor: dialogTheme.backgroundColor,
            actionsPadding: dialogTheme.actionsPadding,
            elevation: dialogTheme.elevation,
            shape: dialogTheme.shape,
          ),
        ],
      );
    });
    Overlay.of(context, rootOverlay: false).insert(_overlayEntry!);
  }

  /// method to hide the dialog
  /// this will remove the overlay entry
  void hide() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}