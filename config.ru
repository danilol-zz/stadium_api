require 'bundler'
Bundler.require

$: << File.dirname(__FILE__)

require 'stadium_api'

run Rack::URLMap.new StadiumApi.route_map
