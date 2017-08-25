require 'bundler'
Bundler.require

$: << File.dirname(__FILE__)

require 'stadium_app'

run Rack::URLMap.new StadiumApp.route_map
