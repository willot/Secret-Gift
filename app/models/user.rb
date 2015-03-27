class User < ActiveRecord::Base
	has_many :user_lists
	has_many :lists, through: :user_lists
	has_many :wishes, through: :lists
end
