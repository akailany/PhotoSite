class PhotosController < ApplicationController
  def index
    begin
    @single_user = User.find(params[:id])
    rescue
      flash[:error] = "User not found"
    end
  end
end
