Teacup.handler UIView, :nav_background do |image|
  UINavigationBar.appearance.setBackgroundImage(image.uiimage, forBarMetrics:UIBarMetricsDefault)
end

Teacup.handler UIView, :nav_btn_tint do |color|
 	UIBarButtonItem.appearance.setTintColor(color)
end

Teacup.handler UIView, :nav_tint do |color|
	UINavigationBar.appearance.setTintColor(color)
end

Teacup.handler UIRoundedRectButton, :button_background do |view, image|
  view.setBackgroundImage(image.uiimage, forState:UIControlStateNormal)
  view.setTitleColor(:white.uicolor, forState:UIControlStateNormal)
end
