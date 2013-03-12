class RootController < UIViewController
  stylesheet :root

  layout :root do
    @label = subview(UILabel, :label)
    @long_button = subview(UIButton.rounded_rect, :long_button)
    @gear = subview(UIButton.rounded_rect, :settings_button)
  end  


  def viewDidLoad
    super

    # Title for this view
    self.title = "Conversation Stoppers"

    # Use custom button for navigation button and events for stopper button
    @gear.addTarget(self, action:'push_settings', forControlEvents:UIControlEventTouchUpInside)
    @long_button.addTarget(self, action:'next_stopper', forControlEvents:UIControlEventTouchUpInside)
    @nav_bar_button = UIBarButtonItem.alloc.initWithCustomView(@gear)
    self.navigationItem.rightBarButtonItem = @nav_bar_button

    # Stoppers engine
    @stoppers = Stoppers.new
  end

  def next_stopper
    #UIAlertView.alert "Load Next Stopper"
    @label.text = @stoppers.next_line
  end

  def push_settings
    @settings = SettingsController.alloc.init 
    self.navigationController.pushViewController(@settings, animated: true)
  end
end
