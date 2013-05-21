class RootController < UIViewController
  stylesheet :root

  layout :root do
    @label = subview(UILabel, :label)
    @long_button = subview(UIButton.rounded_rect, :long_button)
    @twitter_button = subview(UIButton.rounded_rect, :twitter_button)
    @gear = subview(UIButton.rounded_rect, :settings_button)
    @ad = subview(ADBannerView, :ads)
  end  

  def layoutDidLoad

    # Title for this view
    self.title = "Conversation Stoppers"
    # Stoppers engine
    @stoppers = Stoppers.new

    @long_button.accessibilityLabel = 'Next Button'
    # all button code
    self.initialize_buttons

    # make navigation use our special button
    @nav_bar_button = UIBarButtonItem.alloc.initWithCustomView(@gear)
    self.navigationItem.rightBarButtonItem = @nav_bar_button

    # Handle ads
    @ad.delegate = AdDelegate

  end

  def initialize_buttons
    # Use custom button for navigation button and events for stopper button
    @gear.on(:touch) do
      @settings = SettingsController.new
      self.navigationController << @settings
    end

    # On touch pull the next line
    @long_button.on(:touch) do 
      @label.text = @stoppers.next_line
      @label.fit_to_size(40)
    end

    @twitter_button.on(:touch) do
      #if Twitter::Composer.available?
      #  tweet_suggestion
      #else
        UIAlertView.alert "You must be logged in to Twitter in order to send us suggestions!"
      #end
    end

  end

  def tweet_suggestion
    composer = Twitter::Composer.new
    composer.compose(tweet: '@ConvoStoppers : ') do |composer|
      if composer.error
        p "Error"
      elsif composer.cancelled?
        p "Cancelled by user"
      elsif composer.done?
        p "Tweet successful"
      end
    end
  end

end
