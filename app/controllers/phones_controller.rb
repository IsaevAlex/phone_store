class PhonesController < ApplicationController
  def index
  	@phones = Phone.joins(:mobile_model).where(["name LIKE ?","%#{params[:search]}%"]).paginate(:page => params[:page], :per_page => 5)
  end

  def recent
  	@phones = Phone.recent.paginate(:page => params[:page], :per_page => 5)
  	render 'index'
  end

  def price_ascending
  	@phones = Phone.price_ascending.paginate(:page => params[:page], :per_page => 5)
  	render "index"
  end
end
