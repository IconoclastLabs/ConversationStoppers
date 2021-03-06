Teacup::Stylesheet.new :settings do
  import :base

  v_padding = 10
  @credits = []
  @credits.push "This is an open source novelty product of IconoclastLabs.com"
  @credits.push "CREDITS:"
  @credits.push "Massimiliano Mauro, Gant, Matt, Robbie Bogan, Dave Cariello, Bo Cranford, Alicia Steadman"

  style :try, extends: :custom_label,
    constraints: [
      :full_width,
      constrain(:height).equals(:superview, :height).divided_by(5),
      constrain_top(20)
    ],
    text: "Want to actually start a conversation?  Try This!",
    backgroundColor: :clear,
    font: :bold.uifont(20)

  style :chatoms, extends: :chatoms_button,
    constraints: [
      constrain(:center_x).equals(:superview, :center_x),
      constrain_below(:try)
    ]

  style :about, extends: :custom_label,
    constraints: [
      :full_width,
      constrain_below(:chatoms).plus(v_padding),
      constrain(:height).equals(:superview, :height).divided_by(3)
    ],
    font: :bold.uifont(12),
    text: @credits.join("\n")

  style :twitter_label,
    constraints: [
      constrain(:center_x).equals(:superview, :center_x),
      constrain_below(:about)
    ],
    backgroundColor: :clear,
    textColor: :black
end
