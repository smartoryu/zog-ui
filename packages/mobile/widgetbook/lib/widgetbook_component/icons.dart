import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_demo/options/color_options.dart';
import 'package:zero_ui_mobile/zero_ui_mobile.dart';

import '../utils.dart';

WidgetbookComponent iconWidgetbookComponent = WidgetbookComponent(
  name: 'Icon',
  useCases: [
    WidgetbookUseCase(
      name: 'Single Tone',
      builder: (context) => PreviewWidget(
        child: LayoutBuilder(builder: (knobContext, constraints) {
          return GridView.builder(
            padding: const EdgeInsets.symmetric(vertical: 50),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: constraints.maxWidth ~/ 80,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            itemCount: _singleToneIconsData.length,
            itemBuilder: (context, index) {
              final item = _singleToneIconsData[index].entries.first;
              return Container(
                decoration: BoxDecoration(color: Colors.amber.shade50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      item.value,
                      size: 24,
                      color: knobContext.knobs.options(label: 'Color', options: colorOptions),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.key,
                      style: const TextStyle(fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          );
        }),
      ),
    ),
    WidgetbookUseCase(
      name: 'Two Tone',
      builder: (context) => PreviewWidget(
        theme: ZeroThemeData(
          iconTheme: IconThemeData(
            color: context.knobs.options(label: 'Color', options: colorOptions),
          ),
        ),
        child: LayoutBuilder(builder: (context, constraints) {
          return GridView.builder(
            padding: const EdgeInsets.symmetric(vertical: 50),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: constraints.maxWidth ~/ 80,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            itemCount: _twoToneIconsData.length,
            itemBuilder: (context, index) {
              final item = _twoToneIconsData[index].entries.first;

              return Container(
                decoration: BoxDecoration(color: Colors.amber.shade50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    item.value.copyWith(
                      secondaryColor: context.knobs.options(
                        label: 'Secondary Color',
                        options: colorOptions,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.key,
                      style: const TextStyle(fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          );
        }),
      ),
    ),
  ],
);

final List<Map<String, IconData>> _singleToneIconsData = [
  {"verticalAlignTop": ZeroIcons.verticalAlignTop},
  {"verticalLeft": ZeroIcons.verticalLeft},
  {"verticalRight": ZeroIcons.verticalRight},
  {"alignCenter": ZeroIcons.alignCenter},
  {"alignLeft": ZeroIcons.alignLeft},
  {"bgColors": ZeroIcons.bgColors},
  {"bold": ZeroIcons.bold},
  {"alignRight": ZeroIcons.alignRight},
  {"columnHeight": ZeroIcons.columnHeight},
  {"columnWidth": ZeroIcons.columnWidth},
  {"copy": ZeroIcons.copy},
  {"dash": ZeroIcons.dash},
  {"italic": ZeroIcons.italic},
  {"lineHeight": ZeroIcons.lineHeight},
  {"orderedList": ZeroIcons.orderedList},
  {"radiusSetting": ZeroIcons.radiusSetting},
  {"redo": ZeroIcons.redo},
  {"scissor": ZeroIcons.scissor},
  {"smallDash": ZeroIcons.smallDash},
  {"snippets": ZeroIcons.snippets},
  {"sortAscending": ZeroIcons.sortAscending},
  {"sortDescending": ZeroIcons.sortDescending},
  {"strikeThrough": ZeroIcons.strikeThrough},
  {"underline": ZeroIcons.underline},
  {"amazonSquareFilled": ZeroIcons.amazonSquareFilled},
  {"apiFilled": ZeroIcons.apiFilled},
  {"appstoreFilled": ZeroIcons.appstoreFilled},
  {"audioFilled": ZeroIcons.audioFilled},
  {"bankFilled": ZeroIcons.bankFilled},
  {"bellFilled": ZeroIcons.bellFilled},
  {"behanceCircleFilled": ZeroIcons.behanceCircleFilled},
  {"bookFilled": ZeroIcons.bookFilled},
  {"bugFilled": ZeroIcons.bugFilled},
  {"buildFilled": ZeroIcons.buildFilled},
  {"bulbFilled": ZeroIcons.bulbFilled},
  {"calculatorFilled": ZeroIcons.calculatorFilled},
  {"codepenSquareFilled": ZeroIcons.codepenSquareFilled},
  {"compassFilled": ZeroIcons.compassFilled},
  {"contactsFilled": ZeroIcons.contactsFilled},
  {"containerFilled": ZeroIcons.containerFilled},
  {"controlFilled": ZeroIcons.controlFilled},
  {"copyrightCircleFilled": ZeroIcons.copyrightCircleFilled},
  {"creditCardFilled": ZeroIcons.creditCardFilled},
  {"crownFilled": ZeroIcons.crownFilled},
  {"customerServiceFilled": ZeroIcons.customerServiceFilled},
  {"dashboardFilled": ZeroIcons.dashboardFilled},
  {"databaseFilled": ZeroIcons.databaseFilled},
  {"dingtalkCircleFilled": ZeroIcons.dingtalkCircleFilled},
  {"experimentFilled": ZeroIcons.experimentFilled},
  {"eyeFilled": ZeroIcons.eyeFilled},
  {"eyeInvisibleFilled": ZeroIcons.eyeInvisibleFilled},
  {"fileAddFilled": ZeroIcons.fileAddFilled},
  {"fileExclamationFilled": ZeroIcons.fileExclamationFilled},
  {"fileExcelFilled": ZeroIcons.fileExcelFilled},
  {"fileFilled": ZeroIcons.fileFilled},
  {"fileImageFilled": ZeroIcons.fileImageFilled},
  {"fileMarkdownFilled": ZeroIcons.fileMarkdownFilled},
  {"filePdfFilled": ZeroIcons.filePdfFilled},
  {"filePptFilled": ZeroIcons.filePptFilled},
  {"fileTextFilled": ZeroIcons.fileTextFilled},
  {"folderOpenFilled": ZeroIcons.folderOpenFilled},
  {"formatPainterFilled": ZeroIcons.formatPainterFilled},
  {"frownFilled": ZeroIcons.frownFilled},
  {"funnelPlotFilled": ZeroIcons.funnelPlotFilled},
  {"giftFilled": ZeroIcons.giftFilled},
  {"goldFilled": ZeroIcons.goldFilled},
  {"goldenFilled": ZeroIcons.goldenFilled},
  {"googleCircleFilled": ZeroIcons.googleCircleFilled},
  {"googlePlusCircleFilled": ZeroIcons.googlePlusCircleFilled},
  {"googlePlusSquareFilled": ZeroIcons.googlePlusSquareFilled},
  {"googleSquareFilled": ZeroIcons.googleSquareFilled},
  {"hddFilled": ZeroIcons.hddFilled},
  {"layoutFilled": ZeroIcons.layoutFilled},
  {"likeFilled": ZeroIcons.likeFilled},
  {"lockFilled": ZeroIcons.lockFilled},
  {"macCommandFilled": ZeroIcons.macCommandFilled},
  {"mailFilled": ZeroIcons.mailFilled},
  {"medicineBoxFilled": ZeroIcons.medicineBoxFilled},
  {"mediumCircleFilled": ZeroIcons.mediumCircleFilled},
  {"mediumSquareFilled": ZeroIcons.mediumSquareFilled},
  {"mehFilled": ZeroIcons.mehFilled},
  {"messageFilled": ZeroIcons.messageFilled},
  {"mobileFilled": ZeroIcons.mobileFilled},
  {"notificationFilled": ZeroIcons.notificationFilled},
  {"projectFilled": ZeroIcons.projectFilled},
  {"propertySafetyFilled": ZeroIcons.propertySafetyFilled},
  {"pushpinFilled": ZeroIcons.pushpinFilled},
  {"qqCircleFilled": ZeroIcons.qqCircleFilled},
  {"qqSquareFilled": ZeroIcons.qqSquareFilled},
  {"readFilled": ZeroIcons.readFilled},
  {"reconciliationFilled": ZeroIcons.reconciliationFilled},
  {"redEnvelopeFilled": ZeroIcons.redEnvelopeFilled},
  {"redditCircleFilled": ZeroIcons.redditCircleFilled},
  {"redditSquareFilled": ZeroIcons.redditSquareFilled},
  {"restFilled": ZeroIcons.restFilled},
  {"robotFilled": ZeroIcons.robotFilled},
  {"signalFilled": ZeroIcons.signalFilled},
  {"sketchCircleFilled": ZeroIcons.sketchCircleFilled},
  {"sketchSquareFilled": ZeroIcons.sketchSquareFilled},
  {"skinFilled": ZeroIcons.skinFilled},
  {"slackCircleFilled": ZeroIcons.slackCircleFilled},
  {"smileFilled": ZeroIcons.smileFilled},
  {"soundFilled": ZeroIcons.soundFilled},
  {"starFilled": ZeroIcons.starFilled},
  {"switcherFilled": ZeroIcons.switcherFilled},
  {"tabletFilled": ZeroIcons.tabletFilled},
  {"tagFilled": ZeroIcons.tagFilled},
  {"tagsFilled": ZeroIcons.tagsFilled},
  {"usbFilled": ZeroIcons.usbFilled},
  {"videoCameraFilled": ZeroIcons.videoCameraFilled},
  {"walletFilled": ZeroIcons.walletFilled},
  {"zhihuCircleFilled": ZeroIcons.zhihuCircleFilled},
  {"zhihuSquareFilled": ZeroIcons.zhihuSquareFilled},
  {"checkSquare": ZeroIcons.checkSquare},
  {"checkCircle": ZeroIcons.checkCircle},
  {"clockCircle": ZeroIcons.clockCircle},
  {"check": ZeroIcons.check},
  {"closeSquare": ZeroIcons.closeSquare},
  {"closeCircle": ZeroIcons.closeCircle},
  {"close": ZeroIcons.close},
  {"pauseCircle": ZeroIcons.pauseCircle},
  {"plusCircle": ZeroIcons.plusCircle},
  {"pause": ZeroIcons.pause},
  {"plusSquare": ZeroIcons.plusSquare},
  {"plus": ZeroIcons.plus},
  {"questionCircle": ZeroIcons.questionCircle},
  {"question": ZeroIcons.question},
  {"stop": ZeroIcons.stop},
  {"warning": ZeroIcons.warning},
  {"swapLeft": ZeroIcons.swapLeft},
  {"swapRight": ZeroIcons.swapRight},
  {"swap": ZeroIcons.swap},
  {"upCircle": ZeroIcons.upCircle},
  {"upSquare": ZeroIcons.upSquare},
  {"up": ZeroIcons.up},
  {"verticalAlignMiddle": ZeroIcons.verticalAlignMiddle},
  {"verticalAlignBottom": ZeroIcons.verticalAlignBottom},
  {"delete": ZeroIcons.delete},
  {"diff": ZeroIcons.diff},
  {"drag": ZeroIcons.drag},
  {"edit": ZeroIcons.edit},
  {"fontColors": ZeroIcons.fontColors},
  {"fontSize": ZeroIcons.fontSize},
  {"form": ZeroIcons.form},
  {"highlight": ZeroIcons.highlight},
  {"undo": ZeroIcons.undo},
  {"unorderedList": ZeroIcons.unorderedList},
  {"zoomOut": ZeroIcons.zoomOut},
  {"zoomIn": ZeroIcons.zoomIn},
  {"accountBookFilled": ZeroIcons.accountBookFilled},
  {"alipaySquareFilled": ZeroIcons.alipaySquareFilled},
  {"alertFilled": ZeroIcons.alertFilled},
  {"amazonCircleFilled": ZeroIcons.amazonCircleFilled},
  {"calendarFilled": ZeroIcons.calendarFilled},
  {"carFilled": ZeroIcons.carFilled},
  {"carryOutFilled": ZeroIcons.carryOutFilled},
  {"ciCircleFilled": ZeroIcons.ciCircleFilled},
  {"cloudFilled": ZeroIcons.cloudFilled},
  {"codeFilled-1": ZeroIcons.codeFilled_1},
  {"codeFilled": ZeroIcons.codeFilled},
  {"codeSandboxSquareFilled": ZeroIcons.codeSandboxSquareFilled},
  {"dingtalkSquareFilled": ZeroIcons.dingtalkSquareFilled},
  {"dislikeFilled": ZeroIcons.dislikeFilled},
  {"dollarCircleFilled": ZeroIcons.dollarCircleFilled},
  {"dribbbleCircleFilled": ZeroIcons.dribbbleCircleFilled},
  {"dropboxCircleFilled": ZeroIcons.dropboxCircleFilled},
  {"dropboxSquareFilled": ZeroIcons.dropboxSquareFilled},
  {"environmentFilled": ZeroIcons.environmentFilled},
  {"euroCircleFilled": ZeroIcons.euroCircleFilled},
  {"fileUnknownFilled": ZeroIcons.fileUnknownFilled},
  {"fileWordFilled": ZeroIcons.fileWordFilled},
  {"fileZipFilled": ZeroIcons.fileZipFilled},
  {"filterFilled": ZeroIcons.filterFilled},
  {"fireFilled": ZeroIcons.fireFilled},
  {"flagFilled": ZeroIcons.flagFilled},
  {"folderAddFilled": ZeroIcons.folderAddFilled},
  {"folderFilled": ZeroIcons.folderFilled},
  {"heartFilled": ZeroIcons.heartFilled},
  {"homeFilled": ZeroIcons.homeFilled},
  {"hourglassFilled": ZeroIcons.hourglassFilled},
  {"idcardFilled": ZeroIcons.idcardFilled},
  {"ieCircleFilled": ZeroIcons.ieCircleFilled},
  {"ieSquareFilled": ZeroIcons.ieSquareFilled},
  {"insuranceFilled": ZeroIcons.insuranceFilled},
  {"interactionFilled": ZeroIcons.interactionFilled},
  {"moneyCollectFilled": ZeroIcons.moneyCollectFilled},
  {"payCircleFilled": ZeroIcons.payCircleFilled},
  {"phoneFilled": ZeroIcons.phoneFilled},
  {"pictureFilled": ZeroIcons.pictureFilled},
  {"playSquareFilled": ZeroIcons.playSquareFilled},
  {"poundCircleFilled": ZeroIcons.poundCircleFilled},
  {"printerFilled": ZeroIcons.printerFilled},
  {"profileFilled": ZeroIcons.profileFilled},
  {"rocketFilled": ZeroIcons.rocketFilled},
  {"safetyCertificateFilled": ZeroIcons.safetyCertificateFilled},
  {"saveFilled": ZeroIcons.saveFilled},
  {"scheduleFilled": ZeroIcons.scheduleFilled},
  {"securityScanFilled": ZeroIcons.securityScanFilled},
  {"settingFilled": ZeroIcons.settingFilled},
  {"shopFilled": ZeroIcons.shopFilled},
  {"shoppingFilled": ZeroIcons.shoppingFilled},
  {"taobaoSquareFilled": ZeroIcons.taobaoSquareFilled},
  {"thunderboltFilled": ZeroIcons.thunderboltFilled},
  {"toolFilled": ZeroIcons.toolFilled},
  {"trademarkCircleFilled": ZeroIcons.trademarkCircleFilled},
  {"trophyFilled": ZeroIcons.trophyFilled},
  {"twitterCircleFilled": ZeroIcons.twitterCircleFilled},
  {"twitterSquareFilled": ZeroIcons.twitterSquareFilled},
  {"unlockFilled": ZeroIcons.unlockFilled},
  {"exclamationCircle": ZeroIcons.exclamationCircle},
  {"infoCircle": ZeroIcons.infoCircle},
  {"exclamation": ZeroIcons.exclamation},
  {"info": ZeroIcons.info},
  {"issueClose": ZeroIcons.issueClose},
  {"minusCircle": ZeroIcons.minusCircle},
  {"minusSquare": ZeroIcons.minusSquare},
  {"minus": ZeroIcons.minus},
  {"mail": ZeroIcons.mail},
  {"man": ZeroIcons.man},
  {"medicineBox": ZeroIcons.medicineBox},
  {"meh": ZeroIcons.meh},
  {"menu": ZeroIcons.menu},
  {"mergeCells": ZeroIcons.mergeCells},
  {"message": ZeroIcons.message},
  {"mobile": ZeroIcons.mobile},
  {"moneyCollect": ZeroIcons.moneyCollect},
  {"monitor": ZeroIcons.monitor},
  {"more": ZeroIcons.more},
  {"node": ZeroIcons.node},
  {"nodeCollapse": ZeroIcons.nodeCollapse},
  {"nodeExpand": ZeroIcons.nodeExpand},
  {"notification": ZeroIcons.notification},
  {"number": ZeroIcons.number},
  {"oneToOne": ZeroIcons.oneToOne},
  {"paperClip": ZeroIcons.paperClip},
  {"partition": ZeroIcons.partition},
  {"payCircle": ZeroIcons.payCircle},
  {"percentage": ZeroIcons.percentage},
  {"phone": ZeroIcons.phone},
  {"picture": ZeroIcons.picture},
  {"playSquare": ZeroIcons.playSquare},
  {"poundCircle": ZeroIcons.poundCircle},
  {"pound": ZeroIcons.pound},
  {"poweroff": ZeroIcons.poweroff},
  {"printer": ZeroIcons.printer},
  {"profile": ZeroIcons.profile},
  {"project": ZeroIcons.project},
  {"propertySafety": ZeroIcons.propertySafety},
  {"pullRequest": ZeroIcons.pullRequest},
  {"pushpin": ZeroIcons.pushpin},
  {"qrcode": ZeroIcons.qrcode},
  {"read": ZeroIcons.read},
  {"reconciliation": ZeroIcons.reconciliation},
  {"redEnvelope": ZeroIcons.redEnvelope},
  {"reload": ZeroIcons.reload},
  {"rest": ZeroIcons.rest},
  {"robot": ZeroIcons.robot},
  {"rocket": ZeroIcons.rocket},
  {"rotateLeft": ZeroIcons.rotateLeft},
  {"rotateRight": ZeroIcons.rotateRight},
  {"safetyCertificate": ZeroIcons.safetyCertificate},
  {"safety": ZeroIcons.safety},
  {"save": ZeroIcons.save},
  {"scan": ZeroIcons.scan},
  {"schedule": ZeroIcons.schedule},
  {"search": ZeroIcons.search},
  {"securityScan": ZeroIcons.securityScan},
  {"select": ZeroIcons.select},
  {"send": ZeroIcons.send},
  {"setting": ZeroIcons.setting},
  {"shake": ZeroIcons.shake},
  {"shareAlt": ZeroIcons.shareAlt},
  {"shop": ZeroIcons.shop},
  {"shoppingCart": ZeroIcons.shoppingCart},
  {"shopping": ZeroIcons.shopping},
  {"sisternode": ZeroIcons.sisternode},
  {"skin": ZeroIcons.skin},
  {"smile": ZeroIcons.smile},
  {"solution": ZeroIcons.solution},
  {"sound": ZeroIcons.sound},
  {"splitCells": ZeroIcons.splitCells},
  {"star": ZeroIcons.star},
  {"subnode": ZeroIcons.subnode},
  {"switcher": ZeroIcons.switcher},
  {"appSync": ZeroIcons.appSync},
  {"table": ZeroIcons.table},
  {"tablet": ZeroIcons.tablet},
  {"tag": ZeroIcons.tag},
  {"tags": ZeroIcons.tags},
  {"team": ZeroIcons.team},
  {"thunderbolt": ZeroIcons.thunderbolt},
  {"toTop": ZeroIcons.toTop},
  {"tool": ZeroIcons.tool},
  {"trademarkCircle": ZeroIcons.trademarkCircle},
  {"trademark": ZeroIcons.trademark},
  {"transaction": ZeroIcons.transaction},
  {"translation": ZeroIcons.translation},
  {"trophy": ZeroIcons.trophy},
  {"ungroup": ZeroIcons.ungroup},
  {"unlock": ZeroIcons.unlock},
  {"upload": ZeroIcons.upload},
  {"usb": ZeroIcons.usb},
  {"userAdd": ZeroIcons.userAdd},
  {"userDelete": ZeroIcons.userDelete},
  {"userSwitch": ZeroIcons.userSwitch},
  {"user": ZeroIcons.user},
  {"usergroupAdd": ZeroIcons.usergroupAdd},
  {"usergroupDelete": ZeroIcons.usergroupDelete},
  {"verified": ZeroIcons.verified},
  {"videoCameraAdd": ZeroIcons.videoCameraAdd},
  {"videoCamera": ZeroIcons.videoCamera},
  {"wallet": ZeroIcons.wallet},
  {"whatsApp": ZeroIcons.whatsApp},
  {"wifi": ZeroIcons.wifi},
  {"woman": ZeroIcons.woman},
  {"alibaba": ZeroIcons.alibaba},
  {"alipayCircle": ZeroIcons.alipayCircle},
  {"alipay": ZeroIcons.alipay},
  {"aliwangwang": ZeroIcons.aliwangwang},
  {"aliyun": ZeroIcons.aliyun},
  {"amazon": ZeroIcons.amazon},
  {"android": ZeroIcons.android},
  {"antCloud": ZeroIcons.antCloud},
  {"antDesign": ZeroIcons.antDesign},
  {"apple": ZeroIcons.apple},
  {"behanceSquare": ZeroIcons.behanceSquare},
  {"behance": ZeroIcons.behance},
  {"chrome": ZeroIcons.chrome},
  {"codeSandbox": ZeroIcons.codeSandbox},
  {"codepenCircle": ZeroIcons.codepenCircle},
  {"codepen": ZeroIcons.codepen},
  {"dingding": ZeroIcons.dingding},
  {"dribbbleSquare": ZeroIcons.dribbbleSquare},
  {"dribbble": ZeroIcons.dribbble},
  {"dropbox": ZeroIcons.dropbox},
  {"github": ZeroIcons.github},
  {"facebook": ZeroIcons.facebook},
  {"gitlab": ZeroIcons.gitlab},
  {"googlePlus": ZeroIcons.googlePlus},
  {"google": ZeroIcons.google},
  {"html5": ZeroIcons.html5},
  {"instagram": ZeroIcons.instagram},
  {"linkedin": ZeroIcons.linkedin},
  {"mediumWorkmark": ZeroIcons.mediumWorkmark},
  {"ie": ZeroIcons.ie},
  {"medium": ZeroIcons.medium},
  {"reddit": ZeroIcons.reddit},
  {"qq": ZeroIcons.qq},
  {"sketch": ZeroIcons.sketch},
  {"skype": ZeroIcons.skype},
  {"slackSquare": ZeroIcons.slackSquare},
  {"slack": ZeroIcons.slack},
  {"taobaoCircle": ZeroIcons.taobaoCircle},
  {"taobao": ZeroIcons.taobao},
  {"twitter": ZeroIcons.twitter},
  {"wechat": ZeroIcons.wechat},
  {"weiboCircle": ZeroIcons.weiboCircle},
  {"weiboSquare": ZeroIcons.weiboSquare},
  {"weibo": ZeroIcons.weibo},
  {"windows": ZeroIcons.windows},
  {"yahoo": ZeroIcons.yahoo},
  {"youtube": ZeroIcons.youtube},
  {"yuque": ZeroIcons.yuque},
  {"zhihu": ZeroIcons.zhihu},
  {"barChart": ZeroIcons.barChart},
  {"areaChart": ZeroIcons.areaChart},
  {"boxPlot": ZeroIcons.boxPlot},
  {"dotChart": ZeroIcons.dotChart},
  {"fall": ZeroIcons.fall},
  {"fund": ZeroIcons.fund},
  {"heatMap": ZeroIcons.heatMap},
  {"lineChart": ZeroIcons.lineChart},
  {"pieChart": ZeroIcons.pieChart},
  {"radarChart": ZeroIcons.radarChart},
  {"sliders": ZeroIcons.sliders},
  {"rise": ZeroIcons.rise},
  {"stock": ZeroIcons.stock},
  {"arrowDown": ZeroIcons.arrowDown},
  {"arrowLeft": ZeroIcons.arrowLeft},
  {"arrowRight": ZeroIcons.arrowRight},
  {"arrowUp": ZeroIcons.arrowUp},
  {"arrowsAlt": ZeroIcons.arrowsAlt},
  {"backward": ZeroIcons.backward},
  {"borderBottom": ZeroIcons.borderBottom},
  {"borderHorizontal": ZeroIcons.borderHorizontal},
  {"borderInner": ZeroIcons.borderInner},
  {"borderLeft": ZeroIcons.borderLeft},
  {"borderOuter": ZeroIcons.borderOuter},
  {"borderRight": ZeroIcons.borderRight},
  {"borderTop": ZeroIcons.borderTop},
  {"borderVerticle": ZeroIcons.borderVerticle},
  {"caretDown": ZeroIcons.caretDown},
  {"caretLeft": ZeroIcons.caretLeft},
  {"caretRight": ZeroIcons.caretRight},
  {"doubleLeft": ZeroIcons.doubleLeft},
  {"doubleRight": ZeroIcons.doubleRight},
  {"caretUp": ZeroIcons.caretUp},
  {"downCircle": ZeroIcons.downCircle},
  {"downSquare": ZeroIcons.downSquare},
  {"down": ZeroIcons.down},
  {"enter": ZeroIcons.enter},
  {"fastBackward": ZeroIcons.fastBackward},
  {"fastForward": ZeroIcons.fastForward},
  {"forward": ZeroIcons.forward},
  {"leftCircle": ZeroIcons.leftCircle},
  {"fullscreenExit": ZeroIcons.fullscreenExit},
  {"fullscreen": ZeroIcons.fullscreen},
  {"leftSquare": ZeroIcons.leftSquare},
  {"left": ZeroIcons.left},
  {"login": ZeroIcons.login},
  {"logout": ZeroIcons.logout},
  {"menuFold": ZeroIcons.menuFold},
  {"menuUnfold": ZeroIcons.menuUnfold},
  {"picCenter": ZeroIcons.picCenter},
  {"picLeft": ZeroIcons.picLeft},
  {"picRight": ZeroIcons.picRight},
  {"playCircle": ZeroIcons.playCircle},
  {"radiusBottomLeft": ZeroIcons.radiusBottomLeft},
  {"radiusBottomRight": ZeroIcons.radiusBottomRight},
  {"radiusUpLeft": ZeroIcons.radiusUpLeft},
  {"radiusUpright": ZeroIcons.radiusUpright},
  {"retweet": ZeroIcons.retweet},
  {"rightCircle": ZeroIcons.rightCircle},
  {"rightSquare": ZeroIcons.rightSquare},
  {"right": ZeroIcons.right},
  {"rollback": ZeroIcons.rollback},
  {"shrink": ZeroIcons.shrink},
  {"stepBackward": ZeroIcons.stepBackward},
  {"stepForward": ZeroIcons.stepForward},
  {"accountBook": ZeroIcons.accountBook},
  {"aim": ZeroIcons.aim},
  {"alert": ZeroIcons.alert},
  {"apartment": ZeroIcons.apartment},
  {"api": ZeroIcons.api},
  {"appstoreAdd": ZeroIcons.appstoreAdd},
  {"audioMuted": ZeroIcons.audioMuted},
  {"appstore": ZeroIcons.appstore},
  {"audio": ZeroIcons.audio},
  {"bank": ZeroIcons.bank},
  {"audit": ZeroIcons.audit},
  {"bars": ZeroIcons.bars},
  {"bell": ZeroIcons.bell},
  {"barcode": ZeroIcons.barcode},
  {"block": ZeroIcons.block},
  {"book": ZeroIcons.book},
  {"borderlessTable": ZeroIcons.borderlessTable},
  {"bug": ZeroIcons.bug},
  {"branches": ZeroIcons.branches},
  {"build": ZeroIcons.build},
  {"border": ZeroIcons.border},
  {"bulb": ZeroIcons.bulb},
  {"calculator": ZeroIcons.calculator},
  {"calendar": ZeroIcons.calendar},
  {"camera": ZeroIcons.camera},
  {"car": ZeroIcons.car},
  {"carryOut": ZeroIcons.carryOut},
  {"ciCircle": ZeroIcons.ciCircle},
  {"ci": ZeroIcons.ci},
  {"clear": ZeroIcons.clear},
  {"cloudDownload": ZeroIcons.cloudDownload},
  {"cloudServer": ZeroIcons.cloudServer},
  {"cloudSync": ZeroIcons.cloudSync},
  {"cloudUpload": ZeroIcons.cloudUpload},
  {"cloud": ZeroIcons.cloud},
  {"cluster": ZeroIcons.cluster},
  {"comment": ZeroIcons.comment},
  {"compass": ZeroIcons.compass},
  {"compress": ZeroIcons.compress},
  {"consoleSql": ZeroIcons.consoleSql},
  {"contacts": ZeroIcons.contacts},
  {"container": ZeroIcons.container},
  {"control": ZeroIcons.control},
  {"copyrightCircle": ZeroIcons.copyrightCircle},
  {"copyright": ZeroIcons.copyright},
  {"creditCard": ZeroIcons.creditCard},
  {"crown": ZeroIcons.crown},
  {"customerService": ZeroIcons.customerService},
  {"dashboard": ZeroIcons.dashboard},
  {"database": ZeroIcons.database},
  {"deleteColumn": ZeroIcons.deleteColumn},
  {"deleteRow": ZeroIcons.deleteRow},
  {"deliveredProcedure": ZeroIcons.deliveredProcedure},
  {"deploymentUnit": ZeroIcons.deploymentUnit},
  {"desktop": ZeroIcons.desktop},
  {"dingtalk": ZeroIcons.dingtalk},
  {"disconnect": ZeroIcons.disconnect},
  {"dislike": ZeroIcons.dislike},
  {"dollarCircle": ZeroIcons.dollarCircle},
  {"dollar": ZeroIcons.dollar},
  {"download": ZeroIcons.download},
  {"ellipsis": ZeroIcons.ellipsis},
  {"environment": ZeroIcons.environment},
  {"euroCircle": ZeroIcons.euroCircle},
  {"euro": ZeroIcons.euro},
  {"exception": ZeroIcons.exception},
  {"expandAlt": ZeroIcons.expandAlt},
  {"expand": ZeroIcons.expand},
  {"appExport": ZeroIcons.appExport},
  {"experiment": ZeroIcons.experiment},
  {"eyeInvisible": ZeroIcons.eyeInvisible},
  {"eye": ZeroIcons.eye},
  {"fieldBinary": ZeroIcons.fieldBinary},
  {"fieldNumber": ZeroIcons.fieldNumber},
  {"fieldString": ZeroIcons.fieldString},
  {"fieldTime": ZeroIcons.fieldTime},
  {"fileAdd": ZeroIcons.fileAdd},
  {"fileDone": ZeroIcons.fileDone},
  {"fileExcel": ZeroIcons.fileExcel},
  {"fileExclamation": ZeroIcons.fileExclamation},
  {"fileGif": ZeroIcons.fileGif},
  {"fileImage": ZeroIcons.fileImage},
  {"fileJpg": ZeroIcons.fileJpg},
  {"fileMarkdown": ZeroIcons.fileMarkdown},
  {"filePdf": ZeroIcons.filePdf},
  {"fileProtect": ZeroIcons.fileProtect},
  {"fileSearch": ZeroIcons.fileSearch},
  {"filePpt": ZeroIcons.filePpt},
  {"fileSync": ZeroIcons.fileSync},
  {"fileText": ZeroIcons.fileText},
  {"fileUnknown": ZeroIcons.fileUnknown},
  {"fileZip": ZeroIcons.fileZip},
  {"fileWord": ZeroIcons.fileWord},
  {"file": ZeroIcons.file},
  {"filter": ZeroIcons.filter},
  {"fire": ZeroIcons.fire},
  {"folderAdd": ZeroIcons.folderAdd},
  {"flag": ZeroIcons.flag},
  {"folderOpen": ZeroIcons.folderOpen},
  {"folderView": ZeroIcons.folderView},
  {"folder": ZeroIcons.folder},
  {"fork": ZeroIcons.fork},
  {"formatPainter": ZeroIcons.formatPainter},
  {"frown": ZeroIcons.frown},
  {"function": ZeroIcons.function},
  {"fundProjectionScreen": ZeroIcons.fundProjectionScreen},
  {"fundView": ZeroIcons.fundView},
  {"funnelPlot": ZeroIcons.funnelPlot},
  {"gateway": ZeroIcons.gateway},
  {"gif": ZeroIcons.gif},
  {"gift": ZeroIcons.gift},
  {"global": ZeroIcons.global},
  {"gold": ZeroIcons.gold},
  {"group": ZeroIcons.group},
  {"hdd": ZeroIcons.hdd},
  {"heart": ZeroIcons.heart},
  {"history": ZeroIcons.history},
  {"home": ZeroIcons.home},
  {"hourglass": ZeroIcons.hourglass},
  {"idcard": ZeroIcons.idcard},
  {"appImport": ZeroIcons.appImport},
  {"inbox": ZeroIcons.inbox},
  {"insertRowAbove": ZeroIcons.insertRowAbove},
  {"insertRowBelow": ZeroIcons.insertRowBelow},
  {"insertRowLeft": ZeroIcons.insertRowLeft},
  {"insertRowRight": ZeroIcons.insertRowRight},
  {"insurance": ZeroIcons.insurance},
  {"interaction": ZeroIcons.interaction},
  {"key": ZeroIcons.key},
  {"laptop": ZeroIcons.laptop},
  {"layout": ZeroIcons.layout},
  {"like": ZeroIcons.like},
  {"line": ZeroIcons.line},
  {"link": ZeroIcons.link},
  {"loading": ZeroIcons.loading},
  {"loading3Quarters": ZeroIcons.loading3Quarters},
  {"lock": ZeroIcons.lock},
  {"macCommand": ZeroIcons.macCommand}
];

final _twoToneIconsData = [
  {'upCircle': const ZeroTwoToneIcons.upCircle(size: 32)},
  {'like': const ZeroTwoToneIcons.like(size: 32)},
  {'pauseCircle': const ZeroTwoToneIcons.pauseCircle(size: 32)},
  {'checkSquare': const ZeroTwoToneIcons.checkSquare(size: 32)},
  {'switcher': const ZeroTwoToneIcons.switcher(size: 32)},
  {'moneyCollect': const ZeroTwoToneIcons.moneyCollect(size: 32)},
  {'bulb': const ZeroTwoToneIcons.bulb(size: 32)},
  {'fileUnknown': const ZeroTwoToneIcons.fileUnknown(size: 32)},
  {'appstore': const ZeroTwoToneIcons.appstore(size: 32)},
  {'fileExcel': const ZeroTwoToneIcons.fileExcel(size: 32)},
  {'sound': const ZeroTwoToneIcons.sound(size: 32)},
  {'leftCircle': const ZeroTwoToneIcons.leftCircle(size: 32)},
  {'playCircle': const ZeroTwoToneIcons.playCircle(size: 32)},
  {'fileZip': const ZeroTwoToneIcons.fileZip(size: 32)},
  {'hourglass': const ZeroTwoToneIcons.hourglass(size: 32)},
  {'highlight': const ZeroTwoToneIcons.highlight(size: 32)},
  {'reconciliation': const ZeroTwoToneIcons.reconciliation(size: 32)},
  {'dollar': const ZeroTwoToneIcons.dollar(size: 32)},
  {'home': const ZeroTwoToneIcons.home(size: 32)},
  {'poundCircle': const ZeroTwoToneIcons.poundCircle(size: 32)},
  {'shop': const ZeroTwoToneIcons.shop(size: 32)},
  {'copyright': const ZeroTwoToneIcons.copyright(size: 32)},
  {'alert': const ZeroTwoToneIcons.alert(size: 32)},
  {'sliders': const ZeroTwoToneIcons.sliders(size: 32)},
  {'dollarCircle': const ZeroTwoToneIcons.dollarCircle(size: 32)},
  {'shopping': const ZeroTwoToneIcons.shopping(size: 32)},
  {'fileWord': const ZeroTwoToneIcons.fileWord(size: 32)},
  {'funnelPlot': const ZeroTwoToneIcons.funnelPlot(size: 32)},
  {'usb': const ZeroTwoToneIcons.usb(size: 32)},
  {'euroCircle': const ZeroTwoToneIcons.euroCircle(size: 32)},
  {'tag': const ZeroTwoToneIcons.tag(size: 32)},
  {'upSquare': const ZeroTwoToneIcons.upSquare(size: 32)},
  {'downSquare': const ZeroTwoToneIcons.downSquare(size: 32)},
  {'fileAdd': const ZeroTwoToneIcons.fileAdd(size: 32)},
  {'plusSquare': const ZeroTwoToneIcons.plusSquare(size: 32)},
  {'database': const ZeroTwoToneIcons.database(size: 32)},
  {'file': const ZeroTwoToneIcons.file(size: 32)},
  {'accountBook': const ZeroTwoToneIcons.accountBook(size: 32)},
  {'control': const ZeroTwoToneIcons.control(size: 32)},
  {'redEnvelope': const ZeroTwoToneIcons.redEnvelope(size: 32)},
  {'boxPlot': const ZeroTwoToneIcons.boxPlot(size: 32)},
  {'fileText': const ZeroTwoToneIcons.fileText(size: 32)},
  {'folderOpen': const ZeroTwoToneIcons.folderOpen(size: 32)},
  {'build': const ZeroTwoToneIcons.build(size: 32)},
  {'questionCircle': const ZeroTwoToneIcons.questionCircle(size: 32)},
  {'lock': const ZeroTwoToneIcons.lock(size: 32)},
  {'fire': const ZeroTwoToneIcons.fire(size: 32)},
  {'dislike': const ZeroTwoToneIcons.dislike(size: 32)},
  {'euro': const ZeroTwoToneIcons.euro(size: 32)},
  {'idcard': const ZeroTwoToneIcons.idcard(size: 32)},
  {'meh': const ZeroTwoToneIcons.meh(size: 32)},
  {'ci': const ZeroTwoToneIcons.ci(size: 32)},
  {'diff': const ZeroTwoToneIcons.diff(size: 32)},
  {'minusSquare': const ZeroTwoToneIcons.minusSquare(size: 32)},
  {'closeCircle': const ZeroTwoToneIcons.closeCircle(size: 32)},
  {'mail': const ZeroTwoToneIcons.mail(size: 32)},
  {'book': const ZeroTwoToneIcons.book(size: 32)},
  {'wallet': const ZeroTwoToneIcons.wallet(size: 32)},
  {'fileImage': const ZeroTwoToneIcons.fileImage(size: 32)},
  {'bell': const ZeroTwoToneIcons.bell(size: 32)},
  {'dashboard': const ZeroTwoToneIcons.dashboard(size: 32)},
  {'code': const ZeroTwoToneIcons.code(size: 32)},
  {'carryOut': const ZeroTwoToneIcons.carryOut(size: 32)},
  {'flag': const ZeroTwoToneIcons.flag(size: 32)},
  {'snippets': const ZeroTwoToneIcons.snippets(size: 32)},
  {'stop': const ZeroTwoToneIcons.stop(size: 32)},
  {'rightCircle': const ZeroTwoToneIcons.rightCircle(size: 32)},
  {'container': const ZeroTwoToneIcons.container(size: 32)},
  {'frown': const ZeroTwoToneIcons.frown(size: 32)},
  {'tool': const ZeroTwoToneIcons.tool(size: 32)},
  {'safetyCertificate': const ZeroTwoToneIcons.safetyCertificate(size: 32)},
  {'trophy': const ZeroTwoToneIcons.trophy(size: 32)},
  {'warning': const ZeroTwoToneIcons.warning(size: 32)},
  {'pieChart': const ZeroTwoToneIcons.pieChart(size: 32)},
  {'securityScan': const ZeroTwoToneIcons.securityScan(size: 32)},
  {'infoCircle': const ZeroTwoToneIcons.infoCircle(size: 32)},
  {'eyeInvisible': const ZeroTwoToneIcons.eyeInvisible(size: 32)},
  {'leftSquare': const ZeroTwoToneIcons.leftSquare(size: 32)},
  {'copy': const ZeroTwoToneIcons.copy(size: 32)},
  {'gold': const ZeroTwoToneIcons.gold(size: 32)},
  {'fund': const ZeroTwoToneIcons.fund(size: 32)},
  {'playSquare': const ZeroTwoToneIcons.playSquare(size: 32)},
  {'fileExclamation': const ZeroTwoToneIcons.fileExclamation(size: 32)},
  {'environment': const ZeroTwoToneIcons.environment(size: 32)},
  {'checkCircle': const ZeroTwoToneIcons.checkCircle(size: 32)},
  {'html5': const ZeroTwoToneIcons.html5(size: 32)},
  {'save': const ZeroTwoToneIcons.save(size: 32)},
  {'smile': const ZeroTwoToneIcons.smile(size: 32)},
  {'setting': const ZeroTwoToneIcons.setting(size: 32)},
  {'message': const ZeroTwoToneIcons.message(size: 32)},
  {'copyrightCircle': const ZeroTwoToneIcons.copyrightCircle(size: 32)},
  {'crown': const ZeroTwoToneIcons.crown(size: 32)},
  {'notification': const ZeroTwoToneIcons.notification(size: 32)},
  {'picture': const ZeroTwoToneIcons.picture(size: 32)},
  {'camera': const ZeroTwoToneIcons.camera(size: 32)},
  {'printer': const ZeroTwoToneIcons.printer(size: 32)},
  {'exclamationCircle': const ZeroTwoToneIcons.exclamationCircle(size: 32)},
  {'downCircle': const ZeroTwoToneIcons.downCircle(size: 32)},
  {'rest': const ZeroTwoToneIcons.rest(size: 32)},
  {'contacts': const ZeroTwoToneIcons.contacts(size: 32)},
  {'star': const ZeroTwoToneIcons.star(size: 32)},
  {'trademarkCircle': const ZeroTwoToneIcons.trademarkCircle(size: 32)},
  {'experiment': const ZeroTwoToneIcons.experiment(size: 32)},
  {'edit': const ZeroTwoToneIcons.edit(size: 32)},
  {'api': const ZeroTwoToneIcons.api(size: 32)},
  {'bug': const ZeroTwoToneIcons.bug(size: 32)},
  {'unlock': const ZeroTwoToneIcons.unlock(size: 32)},
  {'compass': const ZeroTwoToneIcons.compass(size: 32)},
  {'plusCircle': const ZeroTwoToneIcons.plusCircle(size: 32)},
  {'bank': const ZeroTwoToneIcons.bank(size: 32)},
  {'creditCard': const ZeroTwoToneIcons.creditCard(size: 32)},
  {'fileMarkdown': const ZeroTwoToneIcons.fileMarkdown(size: 32)},
  {'audio': const ZeroTwoToneIcons.audio(size: 32)},
  {'delete': const ZeroTwoToneIcons.delete(size: 32)},
  {'skin': const ZeroTwoToneIcons.skin(size: 32)},
  {'phone': const ZeroTwoToneIcons.phone(size: 32)},
  {'eye': const ZeroTwoToneIcons.eye(size: 32)},
  {'mobile': const ZeroTwoToneIcons.mobile(size: 32)},
  {'insurance': const ZeroTwoToneIcons.insurance(size: 32)},
  {'gift': const ZeroTwoToneIcons.gift(size: 32)},
  {'car': const ZeroTwoToneIcons.car(size: 32)},
  {'ciCircle': const ZeroTwoToneIcons.ciCircle(size: 32)},
  {'thunderbolt': const ZeroTwoToneIcons.thunderbolt(size: 32)},
  {'profile': const ZeroTwoToneIcons.profile(size: 32)},
  {'tags': const ZeroTwoToneIcons.tags(size: 32)},
  {'folderAdd': const ZeroTwoToneIcons.folderAdd(size: 32)},
  {'schedule': const ZeroTwoToneIcons.schedule(size: 32)},
  {'filter': const ZeroTwoToneIcons.filter(size: 32)},
  {'calendar': const ZeroTwoToneIcons.calendar(size: 32)},
  {'videoCamera': const ZeroTwoToneIcons.videoCamera(size: 32)},
  {'minusCircle': const ZeroTwoToneIcons.minusCircle(size: 32)},
  {'closeSquare': const ZeroTwoToneIcons.closeSquare(size: 32)},
  {'cloud': const ZeroTwoToneIcons.cloud(size: 32)},
  {'interaction': const ZeroTwoToneIcons.interaction(size: 32)},
  {'propertySafety': const ZeroTwoToneIcons.propertySafety(size: 32)},
  {'rightSquare': const ZeroTwoToneIcons.rightSquare(size: 32)},
  {'rocket': const ZeroTwoToneIcons.rocket(size: 32)},
  {'tablet': const ZeroTwoToneIcons.tablet(size: 32)},
  {'pushpin': const ZeroTwoToneIcons.pushpin(size: 32)},
  {'hdd': const ZeroTwoToneIcons.hdd(size: 32)},
  {'calculator': const ZeroTwoToneIcons.calculator(size: 32)},
  {'medicineBox': const ZeroTwoToneIcons.medicineBox(size: 32)},
  {'project': const ZeroTwoToneIcons.project(size: 32)},
  {'folder': const ZeroTwoToneIcons.folder(size: 32)},
  {'filePpt': const ZeroTwoToneIcons.filePpt(size: 32)},
  {'filePdf': const ZeroTwoToneIcons.filePdf(size: 32)},
  {'customerService': const ZeroTwoToneIcons.customerService(size: 32)},
  {'layout': const ZeroTwoToneIcons.layout(size: 32)},
  {'clockCircle': const ZeroTwoToneIcons.clockCircle(size: 32)},
  {'heart': const ZeroTwoToneIcons.heart(size: 32)},
];