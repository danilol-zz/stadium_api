class StadiumsController < Sinatra::Base
  get '/frank-says' do
    'Put this in your pipe & smoke it!'
  end

  get '/' do
    @stadiums = StadiumApp::Stadium.all

    rabl :stadium, format: 'json'
  end

  get '/:id' do
    @stadium = StadiumApp::Stadium.find(params[:id])
    rabl :stadium, format: 'json'
  end
end
