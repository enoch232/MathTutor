class AnnouncementsController < ApplicationController
  def index
  end

  def new
    @announcement = Announcement.new
  end

  def create
    @announcement = Announcement.new(announcement_params)
    if @announcement.save
      redirect_to root_path
    else 
      render :new
    end
  end

  def destroy
  end

  def show
  end
  private
  def announcement_params
    params.require(:announcement).permit(:title, :description)
  end

end
