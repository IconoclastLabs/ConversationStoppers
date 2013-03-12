Teacup::Stylesheet.new :root do
  import :base

  v_padding = 10

  style :label, extends: :custom_label,
    constraints: [
      :full_width,
      :full_height
    ],
    backgroundColor: :clear

  style :long_button, extends: :custom_long_button,
    constraints: [
      constrain_bottom(-5),
      constrain(:center_x).equals(:superview, :center_x)
    ]

end
