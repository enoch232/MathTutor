class LessonsController < ApplicationController
  before_action :lesson_find, only: [:show, :destroy]
  def index
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to root_path
    else 
      render :new
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
