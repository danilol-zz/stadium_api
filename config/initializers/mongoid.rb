require 'mongoid'

#Mongoid.load!("#{File.join(File.dirname(__FILE__), '..', 'mongoid.yml')}", Sinatra::Base.environment)
Mongoid.load!("#{File.join(File.dirname(__FILE__), '..', 'mongoid.yml')}", "development")
