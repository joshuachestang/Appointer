class DashboardsController < ApplicationController
    before_filter :authenticate_user!
	
	def dashboard
		@your_page = "This is your dashboard to manage your business"
		@current_user_businesses = current_user.businesses
	end

end
