class HomesController < ApplicationController
	before_action :authenticate_user!
	def index
	  @assignments = Assignment.all.limit(10)
	  @topics = Topic.all
	  @announcements = Announcement.all.limit(10)
	end
end
