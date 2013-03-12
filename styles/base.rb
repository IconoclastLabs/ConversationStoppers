Teacup::Stylesheet.new :base do
  back_color = 0xa53d3d.uicolor 
  dark_color = 0x4a1c1c.uicolor
  mid_color = 0x823131.uicolor

  style UIView,
    backgroundColor: back_color,
    nav_btn_tint: mid_color,
    nav_tint: dark_color

  style :custom_label,
    text: 'Stoppers!',
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
    title: "Stop Conversations",
    button_background: 'large_button'
 
  style :settings_button,
    button_background: 'gear',
    height: 18,
    width: 18,
    backgroundColor: :clear

end