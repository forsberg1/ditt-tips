class BrowseController < ApplicationController
	def index
    	@tips  = Tip.find(:all) 
    end
end
