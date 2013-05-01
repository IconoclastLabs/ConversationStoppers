class AppProperties
  VERSION = '1.1'
  SKU_NAME = 'convostoppersfree' #default
  COMPANY_NAME = 'com.iconoclastlabs.'

  def name
    'Convo Killer'
  end

  def version
    VERSION
  end

  def frameworks
    ["iAd"]
  end

  def contributors
    ["Gant Laborde", "Matt Garrison"]
  end

  def developer_certificate
    "iPhone Developer: Gant Laborde (56HAJP2GEQ)"
  end

  def distribution_certificate
    "iPhone Distribution: Iconoclast Labs LLC"
  end

  def provisioning
    './provisioning' #symlink is custom to each user's machine

  end

  def deployment_target
    '6.0'
  end


  def delegate
    'app_delegate'
  end

  # def icons
  #   icn = ["#{self.name}.png", "#{self.name}-72.png", "#{self.name}@2x.png"]
  # end

  def devices
    [:iphone]
  end

  # def orientations
  #   [:portrait, :landscape_left, :landscape_right] #:portrait_upside_down
  # end

  def identifier
    COMPANY_NAME + SKU_NAME
  end

  def description
    %W[
      "How about that weather, Bob?"

      Tired of water cooler chats?
      Is having too many friends getting you down?

      End that lighthearted banter in a single sentence
      with our help. Conversation Stoppers is here to
      the rescue.
    ]
  end
end