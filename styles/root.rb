Teacup::Stylesheet.new :root do
  import :base

  v_padding = 10

  style :label, extends: :custom_label,
    constraints: [
      :full_width,
      constrain(:height).equals(:superview, :height).minus(75),
      constrain(:top).equals(:superview, :top)
    ],
    backgroundColor: :clear

  style :long_button, extends: :custom_long_button,
    constraints: [
      constrain_bottom(-5),
      constrain(:center_x).equals(:superview, :center_x)
    ]

end
