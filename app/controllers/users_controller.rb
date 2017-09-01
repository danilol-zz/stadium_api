class UsersController< Sinatra::Base

  get '/' do
    @user = StadiumApi::User.all

    render :rabl, :user, format: 'json'
  end

  get '/:id' do
    logger.info "looking for '#{params[:id]}'"

    @user = StadiumApi::User.find(params[:id])

    render :rabl, :user, format: 'json'
  end
end
