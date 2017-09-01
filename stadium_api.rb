require 'byebug'
require 'sinatra'
require 'rabl'

ENV['RACK_ENV'] ||= 'development'

$LOAD_PATH << 'app'

Rabl.register!
#set :views, settings.root + '/app/views'
require File.join(File.dirname(__FILE__), 'config', 'initializers', 'mongoid')

#Bundler.require

module StadiumApi
  Dir['./app/*.rb'].each { |lib| require lib }

  Dir[File.join(File.dirname(__FILE__), 'app', 'models/*.rb')].each do |f|
    autoload File.basename(f, '.rb').camelize.to_sym, f
  end

  module Controllers
    Dir['./app/controllers/*.rb'].each { |controller| require controller }
  end


  def self.route_map
    map = {
      #'/'                      => StadiumApi::App,
      '/users'                 => UsersController,
      '/stadiums'              => StadiumsController,
      '/countries'             => CountriesController,
      #'/health_check'          => IbaConfig::HealthCheck::VersionedApp.new({ mongo: IbaConfig::HealthCheck::Mongo.new, })
    }

    #map.merge!({
      #'/everything' => Profiles::Controllers::DeleteAll,
      #'/seed'       => Profiles::Controllers::Seed
    #}) if ENV['RACK_ENV'] =~ /development|test|cucumber/

    map
  end
end
