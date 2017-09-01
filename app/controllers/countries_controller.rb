class CountriesController < Sinatra::Base
  get '/frank-says' do
    'Put this in your pipe & smoke it!'
  end

  get '/' do
    @countries = StadiumApi::Country.all

    rabl :country, format: 'json'
  end

  get '/:id' do
    @country = StadiumApi::Country.find(params[:id])
    rabl :country, format: 'json'
  end
end
