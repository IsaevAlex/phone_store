class Phone < ApplicationRecord
	has_many :colors_phone,  through: :phone_colors, source: :color
    has_many :phone_colors, :dependent => :destroy

	belongs_to :mobile_model
	belongs_to :mobile_system
	belongs_to :mobile_producer
	belongs_to :mobile_type
	belongs_to :screen
	validates :price, presence: true
	
	validates :ram, presence: true
	validates :memory, presence: true
	validates :battery_charge, presence: true
	validates :mobile_type_id, presence: true
	validates :mobile_producer_id, presence: true
	validates :mobile_model_id, presence: true
	validates :mobile_system_id, presence: true

	scope :recent, ->{ order("created_at DESC") }
	scope :price_ascending, ->{ order("price ASC") }

end
