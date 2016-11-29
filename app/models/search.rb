class Search < ApplicationRecord
	def phones
		@phones ||= find_phones
	end

	private
		def find_phones
			phones = Phone.order(:created_at => :desc)
			phones = phones.where(mobile_producer_id: mobile_producer_id) if mobile_producer_id.present?
			phones = phones.where(mobile_type_id: mobile_type_id) if mobile_type_id.present?
			phones = phones.where(mobile_system_id: mobile_system_id) if mobile_system_id.present?
			phones = phones.where(screen_id: screen_id) if screen_id.present?
			phones = phones.where("price >= ?", min_price) if min_price.present?
			phones = phones.where(garant: true) if garant.present?
			phones = phones.where(on_sale: true) if on_sale.present?
			phones = phones.where(g_4: true) if g_4.present?
			phones = phones.where(g_3: true) if g_3.present?
			phones = phones.where(wi_fi: true) if wi_fi.present?
			phones = phones.where("price <= ?", max_price) if max_price.present?
			phones = phones.where("memory >= ?", min_memory) if min_memory.present?
			phones = phones.where("memory <= ?", max_memory) if max_memory.present?
			phones = phones.where("ram >= ?", min_ram) if min_ram.present?
			phones = phones.where("ram <= ?", max_ram) if max_ram.present?
			phones = phones.where("battery_charge >= ?", min_battery_charge) if min_battery_charge.present?
			phones = phones.where("battery_charge <= ?", max_battery_charge) if max_battery_charge.present?						
			phones
		end
end
