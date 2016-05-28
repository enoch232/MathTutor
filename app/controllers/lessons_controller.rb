class LessonsController < ApplicationController
  before_action :lesson_find, only: [:show, :destroy, :edit, :update]
  def index
  end
  def new
    @lesson = Lesson.new
  end
  def create
    @topic = Topic.find(params[:topic_id])
    @lesson = @topic.lessons.new(lesson_params)
    @lesson.topic_id = @topic.id
    if @lesson.save
      redirect_to topic_lesson_path(topic_id: @topic.id, id: @lesson.id)
    else 
      render :new
    end
  end
  def edit
  end
  def update
    if @lesson.update(lesson_params)
      redirect_to @lesson, notice: "Lesson was successfully updated!"
    else
      render :edit
    end
  end
  def destroy
    @lesson.destroy
    redirect_to root_path
  end
  def show
  end
  private
  def lesson_params
    params.require(:lesson).permit(:title, :description)
  end
  def lesson_find
    @lesson = Lesson.find(params[:id])
  end 
end
