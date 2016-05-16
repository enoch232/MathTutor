class AssignmentsController < ApplicationController
  before_action :assignment_find, only: [:show, :destroy]
  def index
    @assignments = Assignment.all
  end
  
  def new
    @assignment = Assignment.new
  end
  def create
    @assignment = Assignment.new(assignment_params)
    if @assignment.save
      redirect_to root_path
    else
      render :new
    end
  end
  def show
  end
  def destroy
    @assignment.destroy
    redirect_to root_path
  end
  private
  def assignment_params
    params.require(:assignment).permit(:title, :description, :duedate)
  end
  def assignment_find
    @assignment = Assignment.find(params[:id])
  end
end
