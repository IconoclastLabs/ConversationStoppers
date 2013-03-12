Teacup::Stylesheet.new :base do
  back_color = 0xc3a477.uicolor 
  dark_color = 0x4d3e33.uicolor
  mid_color = 0x9f8061.uicolor

  style UIView,
    backgroundColor: back_color,
    nav_btn_tint: mid_color,
    nav_tint: dark_color

  style :custom_label,
    text: 'App Stuff!',
    backgroundColor: :clear,
    numberOfLines: 0,
    font: :bold.uifont(40),
    textColor: :white,
    shadowColor: :black,
    textAlignment: UITextAlignmentCenter,
    layer: {
      transform: identity,
      shadowRadius: 20,
      shadowOpacity: 0.5,
      masksToBounds: false
    }

  style :custom_long_button,
    width: 292,
    height: 42,
    title: "Custom Long Button",
    button_background: 'large_button'
 
  style UINavigationBar,
    barStyle: UIBarStyleBlack,
    tintColor: mid_color,
    translucent: false,
    landscape: {
      tintColor: UIColor.blackColor
    }

  style :settings_button,
    button_background: 'gear',
    height: 18,
    width: 18,
    backgroundColor: :clear

end