module ShowtipHelper
	def rating_gui(intCount) # Ugly solution for dipslay rating hearts
		if intCount <= 50
			image_tag "/assets/popularity/hearts_first.png"
		else if intCount >= 51 and intCount < 101
			image_tag "/assets/popularity/hearts_second.png"
		else if intCount >= 101 and intCount < 201
			image_tag "/assets/popularity/hearts_third.png"
		else if intCount >= 201 and intCount < 301
			image_tag "/assets/popularity/hearts_tfour.png"
		else if intCount >= 301
			image_tag "/assets/popularity/hearts_five.png"
		end
		end
		end
		end
		end
	end
end
