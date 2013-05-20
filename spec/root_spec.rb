describe "The root view" do
  tests RootController

  it "displays a new stopper when the Next button is tapped" do
    
    label_text_before = controller.instance_variable_get("@label").text
    tap 'Next Button'
    controller.instance_variable_get("@label").text.should.not == label_text_before

  end

end
