class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end
  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to root_path
    else 
      render :new
    end
  end

  def show
  end

  def destroy
  end
  private
  def topic_params
    params.require(:assignments).permit(:title, :description)
  end
end
