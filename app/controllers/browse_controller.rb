class BrowseController < ApplicationController
	def index
    	@tips = Tip.paginate(:page => params[:page], :per_page => 10)
    end
end
