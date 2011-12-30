class ShowtipController < ApplicationController
	def index
	    @tip  = Tip.find(params[:id])
	    @update_value = @tip.popularity + 1
	    
	    a = Tip.find_by_id(params[:id])
		a.popularity = @update_value
		a.save
	    @user = User.find(@tip.user_id)
	    respond_to do |format|
	    format.html # show.html.erb
	    format.json { render json: @tip }
    end
  end
end
