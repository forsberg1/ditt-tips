class ProfileController < ApplicationController
	before_filter :require_login
	def index
	end
end
