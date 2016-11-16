class MobileProducer < ApplicationRecord
	has_many :phones
	has_many :mobile_models
	validates :name, presence: true
end
