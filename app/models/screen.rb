class Screen < ApplicationRecord
	has_many :phones
	validates :name, presence: true
end
