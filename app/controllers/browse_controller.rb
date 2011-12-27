class BrowseController < ApplicationController
	def index
    	@tips = Tip.paginate(:page => params[:page], :per_page => 2)
    end
end
