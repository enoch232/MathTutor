class TopicsController < ApplicationController
  before_action :topic_find, only: [:show, :destroy, :create_lesson, :edit, :update]
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end
  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to @topic
    else 
      render :new
    end
  end
  def edit
  end
  def update
    if @topic.update(topic_params)
      redirect_to @topic, notice: "Topic was updated successfully!"
    else
      render :edit
    end
  end
  def show
  end
  def destroy
    @topic.destroy
    redirect_to root_path
  end
  private
  def topic_params
    params.require(:topic).permit(:title, :description)
  end
  def topic_find
    @topic = Topic.find(params[:id])
  end
end
