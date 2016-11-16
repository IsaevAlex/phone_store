class PhonesController < ApplicationController

  def recent
  	@phones = Phone.recent.paginate(:page => params[:page], :per_page => 5)
  	render "home/index"
  end

  def price_ascending
  	@phones = Phone.price_ascending.paginate(:page => params[:page], :per_page => 5)
  	render "home/index"
  end
end
