class ShowtipController < ApplicationController
	def index
	    @tip  = Tip.find(params[:id])
	    #Tip.update_all("popularity = 1") #OBS: make this one if nil error occur
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
