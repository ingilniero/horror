class HomeController < ApplicationController
  def index
    @entries = Entry.order('created_at DESC')
    respond_to do |format|
      format.html
    end
  end
end
