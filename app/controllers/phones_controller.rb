class PhonesController < ApplicationController
  before_action :set_phone, only: [:upvote, :downvote]


  def index
  	@phones = Phone.joins(:mobile_model).where(["name LIKE ?","%#{params[:search]}%"]).order(:cached_votes_up => :desc).paginate(:page => params[:page], :per_page => 5)
  end

  def recent
  	@phones = Phone.recent.paginate(:page => params[:page], :per_page => 5)
  	render 'index'
  end

  def upvote
    @phone.upvote_from current_user
    redirect_to root_path
  end

  def downvote
    @phone.downvote_from current_user
    redirect_to root_path
  end

  def price_ascending
  	@phones = Phone.price_ascending.paginate(:page => params[:page], :per_page => 5)
  	render "index"
  end

  private

  def set_phone
     @phone = Phone.find(params[:id])
  end
end
