class Wish < ActiveRecord::Base
	has_many :urls
	belongs_to :user
	belongs_to :list

	validates :name, presence: true
	validates_length_of :description,
		:maximum => 500,
		:too_long =>"Limit is 500 characters"
end
