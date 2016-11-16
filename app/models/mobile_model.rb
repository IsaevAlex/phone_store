class MobileModel < ApplicationRecord
	has_many :phones
	belongs_to :mobile_producer
	validates :name, presence: true
end
