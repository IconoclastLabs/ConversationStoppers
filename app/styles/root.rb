Teacup::Stylesheet.new :root do
  import :base

  v_padding = 10

  style :label, extends: :custom_label,
    text: 'Stop That Convo!',
    constraints: [
      constrain(:width).equals(:superview, :width).minus(15),
      constrain(:center_x).equals(:superview, :center_x),
      constrain(:height).equals(:superview, :height).minus(115),
      constrain(:top).equals(:superview, :top)
    ],
    backgroundColor: :clear

  style :long_button, extends: :custom_long_button,
    constraints: [
      constrain_bottom(-5),
      constrain(:center_x).equals(:superview, :center_x)
    ]

  style :ads,
    constraints: [
      :full_width,
      constrain_below(:label),
      constrain(:center_x).equals(:superview, :center_x)
    ],
    currentContentSizeIdentifier: ADBannerContentSizeIdentifierPortrait,
    backgroundColor: :clear
end
