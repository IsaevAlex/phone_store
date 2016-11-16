class Color < ApplicationRecord
	has_many :phone_colors
	has_many :phone_color_by, through: :phone_colors, source: :phone
	validates :name, presence: true
end
