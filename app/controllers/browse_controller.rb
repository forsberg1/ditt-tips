class BrowseController < ApplicationController
	def index
    	@tips = Tip.find(:all) 
    	#@users = User.find(@tips.user_id)
    end
end
