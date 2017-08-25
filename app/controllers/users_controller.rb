class UsersController< Sinatra::Base

  get '/' do
    @user = Stadium::User.all

    render :rabl, :user, format: 'json'
  end

  get '/:id' do
    logger.info "looking for '#{params[:id]}'"

    @user = Stadium::User.find(params[:id])

    render :rabl, :user, format: 'json'
  end
end
