class HomesController < ApplicationController
	before_action :authenticate_user!
	def index
	  @assignments = Assignment.all.order("assignments.created_at desc").limit(10)
	  @topics = Topic.all
	  @announcements = Announcement.all.order("announcements.updated_at desc").limit(5)
	end
end
