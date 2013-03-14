class SettingsController < UIViewController
  stylesheet :settings

  layout :settings do
    @label = subview(UILabel, :try)
    @chatoms = subview(UIButton.rounded_rect, :chatoms)
  end  

  def viewDidLoad
  	super

 		# Open Chatoms
    @chatoms.on(:touch) do 
  		url = "itms-apps://itunes.apple.com/app/chatoms/id520369740"
  		url.nsurl.open
  	end

  end

end