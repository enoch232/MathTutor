class AdminsController < ApplicationController
  def index
  end
  def about
  	@aboutme = Aboutme.all
  	if @aboutme.count < 1

  	else
  	end


  end
  def contact
  end
end
