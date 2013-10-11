class SessionsController < ApplicationController
  def create
    reset_session
    session[:user_handle] = user_handle
    redirect_to root_path
  end

  private

  def available_handle_key
    user_handle_keys.find { |key| auth_hash['info'][key] }
  end

  def auth_hash
    request.env['omniauth.auth']
  end

  def default_user_handle
    'fellow coder'
  end

  def user_handle
    auth_hash['info'][available_handle_key] || default_user_handle
  end

  def user_handle_keys
    %w(handle name nickname email)
  end
end
