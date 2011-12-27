module ApplicationHelper
	def get_email_by_id(id=nil)
		@user = Identity.find(id)
		if @user
			user.email

    end
  end
  def latest_five
    @latest_five = Tip.latest_five 
  end
end
