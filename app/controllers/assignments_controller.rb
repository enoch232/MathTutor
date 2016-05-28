 class AssignmentsController < ApplicationController
  before_action :assignment_find, only: [:show, :destroy, :edit, :update]
  def index
    @assignments = Assignment.all
  end
  
  def new
    @assignment = Assignment.new
  end
  def create
    @lesson = Lesson.find(params[:lesson_id])
    @assignment = @lesson.assignments.new(assignment_params)
    @assignment.topic_id = @lesson.topic_id
    if @assignment.save
      redirect_to topic_lesson_assignment_path(lesson_id: @lesson.id, topic_id: @assignment.topic_id, id: @assignment.id)
    else
      render :new
    end
  end
  def edit
  end
  def update
    if @assignment.update(assignment_params)
      @lesson_id = @assignment.lesson_id
      @topic_id = @assignment.topic_id
      redirect_to topic_lesson_assignment_path(lesson_id: @lesson_id, topic_id: @topic_id, id: @assignment.id), notice: "Assignment was successfully updated!"
    else
      render :edit
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
