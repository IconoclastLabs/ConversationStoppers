Teacup::Stylesheet.new :root do
  import :base

  v_padding = 10

  style :label, extends: :custom_label,
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
      constrain_below(:label),
      constrain_left(0)
    ],
    backgroundColor: :clear
end
