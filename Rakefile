# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'bundler'
require 'sugarcube-568'
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Convo Killer'
  app.version = "1.0"
  app.short_version = "1.0"
  app.deployment_target = '6.0'
  #include styles
  app.codesign_certificate = "iPhone Distribution: Iconoclast Labs LLC"
  app.provisioning_profile = "/Users/mattgarrison/Projects/apps/chatomsmotion/resources/Chatoms_Free.mobileprovision"
  app.files += Dir.glob(File.join(app.project_dir, 'styles/**/*.rb'))
  app.device_family = [:iphone, :ipad]
  #frameworks
  app.frameworks << "iAd"
end
