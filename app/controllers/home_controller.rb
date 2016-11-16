class HomeController < ApplicationController
  
  def index
  	@phones = Phone.joins(:mobile_model).where(["name LIKE ?","%#{params[:search]}%"]).paginate(:page => params[:page], :per_page => 5)
  end


end
