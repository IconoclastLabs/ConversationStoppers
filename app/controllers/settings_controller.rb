class SettingsController < UIViewController
  stylesheet :settings

  layout :settings do
    @label = subview(UILabel, :try)
    @chatoms = subview(UIButton.rounded_rect, :chatoms)
    @about = subview(UILabel, :about)
    @twitter = subview(MotionAwesome.label(:twitter, text: '@ConvoStoppers'), :twitter_label)
  end  

  def layoutDidLoad
 		# Open Chatoms
    @chatoms.on(:touch) do 
  		url = "itms-apps://itunes.apple.com/app/chatoms/id520369740"
  		url.nsurl.open
  	end

  end

# Twittermotion is causing errors
  #def tweet_suggestion
  #  composer = Twitter::Composer.new
  #  composer.compose(tweet: '@ConvoStoppers : ') do |composer|
  #    if composer.error
  #      p "Error"
  #    elsif composer.cancelled?
  #      p "Cancelled by user"
  #    elsif composer.done?
  #      p "Tweet successful"
  #    end
  #  end
  #end

end