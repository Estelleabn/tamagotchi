module PetsHelper

	def rating(r)
		result = ""

		r.times do
			result += content_tag("i", "", class: "fa fa-heart")
		end  
		
		(Pet::RATING_MAX - r).times do 
		  result += content_tag("i", "", class: "fa fa-heart-o")
		end
		result.html_safe 
	end

end
