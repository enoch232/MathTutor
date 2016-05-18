class AnnouncementsController < ApplicationController
  before_action :announcement_find, only: [:show, :destroy]
  def index
  end

  def new
    @announcement = Announcement.new
  end

  def create
    @announcement = Announcement.new(announcement_params)
    if @announcement.save
      redirect_to @announcement
    else 
      render :new
    end
  end

  def destroy
    @announcement.destroy
    redirect_to root_path
  end

  def show
  end
  private
  def announcement_params
    params.require(:announcement).permit(:title, :description)
  end
  def announcement_find
    @announcement = Announcement.find(params[:id])
  end
end
