# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'bundler'
require 'sugarcube-568'
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Convo Killer'

  #include styles
  app.files += Dir.glob(File.join(app.project_dir, 'styles/**/*.rb'))
  #frameworks
  app.frameworks << "iAd"
end
