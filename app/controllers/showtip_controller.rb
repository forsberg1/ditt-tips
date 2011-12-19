class ShowtipController < ApplicationController
	def index
	    @tip  = Tip.find(params[:id])
	    @user = User.find(@tip.user_id)
	    respond_to do |format|
	    format.html # show.html.erb
	    format.json { render json: @tip }
    end
  end
end
