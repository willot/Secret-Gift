class User < ActiveRecord::Base
	has_many :user_lists
	has_many :lists, through: :user_lists
	has_many :wishes
	has_many :urls, through: :wishes
	has_many :administred_list, class_name: "List", source: :admin

	validates :username, uniqueness: true, presence: true
	validates :name, presence: true
	validates :email, presence: true 
	

	has_secure_password
end
