class SessionsController < ApplicationController

  def create
    auth_hash = request.env['omniauth.auth']
    user = User.find_by_email(auth_hash['info']['email']) || User.create(name: auth_hash['info']['name'], email: auth_hash['info']['email'])
    session[:user_id] = user.id
    redirect_to '/news'
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
