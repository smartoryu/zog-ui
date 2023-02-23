import { render } from '@testing-library/react';
import { SideMenu } from './SideMenu';

describe('SideMenu', () => {
  it('should render successfuly', () => {
    const { baseElement } = render(
      <SideMenu>
        <SideMenu.Item>Hello World</SideMenu.Item>
      </SideMenu>
    );

    expect(baseElement).toBeTruthy();
  });
});
