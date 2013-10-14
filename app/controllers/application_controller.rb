class ApplicationController < ActionController::Base
  def current_user
    session[:auth_hash]
  end

  protected

  def request_authorization
    redirect_to '/auth' unless current_user
  end
end
