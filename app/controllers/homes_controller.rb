class HomesController < ApplicationController
	def index
	  @homeworks = Homework.all.limit(10)
	end
end
