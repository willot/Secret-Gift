class Wish < ActiveRecord::Base
	has_many :urls
	belongs_to :user
	belongs_to :list
end
