class ApplicationController < ActionController::Base
  def current_user
    session[:user_handle]
  end

  protected

  def request_authorization
    redirect_to '/auth' unless current_user
  end
end
