class BrowseController < ApplicationController
	def index
    	@tip_by_cat = Tip.where("categorie_id = ?", params[:id]).paginate(:page => params[:page], :per_page => 10) 	
    end
end
