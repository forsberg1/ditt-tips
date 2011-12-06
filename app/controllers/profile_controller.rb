class ProfileController < ApplicationController
	before_filter :require_login
	def index
		@title = "dsad";
	end
end
