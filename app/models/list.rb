class List < ActiveRecord::Base
	has_many :user_lists
	has_many :users, through: :user_lists
	has_many :wishes, through: :users
	has_many :urls, through: :wishes
	belongs_to :admin, class_name: "User", foreign_key: "user_id" 
end
