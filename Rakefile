# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'bundler'
require 'sugarcube-568'
Bundler.require


require './app_properties'
props = AppProperties.new

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = props.name
  app.deployment_target = props.deployment_target

  app.version = props.version.scan(/\d+/).flatten.first
  app.short_version = props.version.scan(/\d+/).first #required to be incremented for AppStore (http://iconoclastlabs.com/cms/blog/posts/updating-a-rubymotion-app-store-submission)
  app.device_family = props.devices
  #app.icons = props.icons
  #app.provisioning_profile = props.provisioning
  #app.codesign_certificate = props.distribution_certificate
  #app.codesign_certificate = props.developer_certificate
  app.files += Dir.glob(File.join(app.project_dir, 'styles/**/*.rb'))
  app.frameworks = props.frameworks
end
