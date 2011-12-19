module ApplicationHelper
	def get_email_by_id(id=nil)
		@user = Identity.find(id)
		if @user
			user.email
		else
			"asssa"
	 	end
    end
end
