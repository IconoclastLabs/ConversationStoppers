Teacup::Stylesheet.new :base do
  back_color = 0xa53d3d.uicolor 
  dark_color = 0x000000.uicolor
  mid_color = 0x823131.uicolor

  style UIView,
    backgroundColor: 'background'.uicolor,
    nav_btn_tint: mid_color,
    nav_tint: dark_color

  style :custom_label,
    backgroundColor: :clear,
    numberOfLines: 0,
    font: :bold.uifont(36),
    textColor: :white,
    shadowColor: :black,
    textAlignment: UITextAlignmentCenter,
    layer: {
      transform: transform_layer.identity,
      shadowRadius: 20,
      shadowOpacity: 0.5,
      masksToBounds: false
    }

  style :custom_long_button,
    height: 42,
    title: "Stop Conversations",
    button_background: 'large_button'
 
  style :settings_button,
    button_background: 'skull',
    height: 18,
    width: 18,
    backgroundColor: :clear

  style :chatoms_button,
    image: 'chatoms'

end
