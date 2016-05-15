class AssignmentsController < ApplicationController
  def index

  end
  def show
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
  def destroy
  end
  private
  def assignment_params
    params.require(:assignment).permit(:title, :description, :duedate)
  end
end
