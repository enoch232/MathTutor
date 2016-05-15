class LessonsController < ApplicationController
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
  end

  def show
  end
  private
  def lesson_params
    params.require(:lesson).permit(:title, :description)
  end

end
