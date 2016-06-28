class AdminsController < ApplicationController
  def index
  end
  def about
  	@admin = About.all
  end
  def about_new
    @admin = About.all
    if @admin.count < 1
      @admin = About.new(description: "None")
    else
      @admin = @admin.first
    end
    @admin.update(about_params)
    redirect_to about_path
  end
  def contact
  end
  def contact_new
  end
  private
  def about_params
    params.require(:abouts).permit(:description)
  end
end
