class SearchesController < ApplicationController
	def new
		@search = Search.new
	end

	def create
		@search = Search.create(search_params)
		redirect_to @search
	end

	def show
		@search = Search.find(params[:id])
	end

	private

	def search_params
		params.require(:search).permit(:min_price, :max_price, :mobile_producer_id, :mobile_type_id, :mobile_system_id, :screen_id, :min_memory, :max_memory, :min_ram, :max_ram, :min_battery_charge, :max_battery_charge, :garant, :on_sale, :g_4, :g_3, :wi_fi)
	end
end
