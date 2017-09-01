class StadiumsController < Sinatra::Base
  get '/frank-says' do
    'Put this in your pipe & smoke it!'
  end

  get '/' do
    @stadiums = StadiumApi::Stadium.all

    rabl :stadium, format: 'json'
  end

  get '/:id' do
    @stadium = StadiumApi::Stadium.find(params[:id])
    rabl :stadium, format: 'json'
  end
end
