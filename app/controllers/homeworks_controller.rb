class HomeworksController < ApplicationController
  def index

  end
  def show
  end
  def new
  	@homework = Homework.new
  end
  def create
  	@homework = Homework.new(homework_params)
  	if @homework.save
  		redirect_to root_path
  	else
  		render :new
  	end
  end
  def destroy
  end
  private
  def homework_params
  	params.require(:homework).permit(:title, :description, :duedate)
  end
end
