class Url < ActiveRecord::Base
	belongs_to :whish

	validates: url, presence: true
end
