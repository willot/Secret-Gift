class List < ActiveRecord::Base
	has_many :wishes
	has_many :urls through::wishes
	has_many :user_lists
end
