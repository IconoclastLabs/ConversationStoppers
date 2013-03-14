Teacup::Stylesheet.new :settings do
  import :base

  v_padding = 10

  style :try, extends: :custom_label,
    constraints: [
      :full_width,
      constrain(:height).equals(:superview, :height).divided_by(5),
      constrain_top(20)
    ],
    text: "Want to actually start a conversation?  Try This!",
    backgroundColor: :clear,
    height: 200,
    font: :bold.uifont(20)

  style :chatoms, extends: :chatoms_button,
    constraints: [
      constrain(:center_x).equals(:superview, :center_x),
      constrain_below(:try)
    ]

end
