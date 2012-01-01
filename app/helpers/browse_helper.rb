module BrowseHelper
	def fetch_statistics_ui_gui(catid)
		@category = Category.where("id = ?", catid)
		@count = 0
		@category.each do |category|
			@name  = category.categoryname
		end
		@tip = Tip.where("categorie_id = ?", catid)
		@tip.each_with_index do |tip, i|
			@hmany = i + 1
		end
		content_tag(:h1, @hmany.to_s + " traffar i kategorin " + @name)	
	end		
end
