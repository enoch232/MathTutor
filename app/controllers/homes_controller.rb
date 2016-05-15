class HomesController < ApplicationController
	def index
	  @assignments = Assignment.all.limit(10)
	  @topics = Topic.all
	  @announcements = Announcement.all.limit(10)
	end
end
