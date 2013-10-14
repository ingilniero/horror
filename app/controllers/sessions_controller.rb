class SessionsController < ApplicationController
  def create
    reset_session
    session[:auth_info] = auth_hash['info']
    redirect_to root_path
  end

  def destroy
    reset_session
    redirect_to root_path
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end
end
