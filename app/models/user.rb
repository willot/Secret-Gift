class User < ActiveRecord::Base
	has_many :user_lists
	has_many :lists, through: :user_lists
	has_many :wishes, through: :lists
	has_many :urls, through: :wishes
	has_many :administred_list, class_name: "List", source: :admin
end
