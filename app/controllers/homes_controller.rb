class HomesController < ApplicationController
	def index
	  @homeworks = Homework.all.limit(10)
	  @topics = Topic.all
	  @announcements = Announcement.all.limit(10)
	end
end
