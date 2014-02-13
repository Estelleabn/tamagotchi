class Pet < ActiveRecord::Base
	belongs_to :user

	RATING_MAX = 5
end
