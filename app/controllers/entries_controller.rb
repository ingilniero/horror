class EntriesController < ApplicationController
  include SessionConcern

  def create
    params[:entry][:user_handle] = user_handle if current_user
    @entry = Entry.new(entry_params)
    if @entry.save
      respond_to do |format|
        format.html { redirect_to root_path }
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path }
      end
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :content, :user_handle, :language)
  end
end
