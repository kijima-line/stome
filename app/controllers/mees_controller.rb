class MeesController < ApplicationController
  # def index
  #   @mees = Mee.includes(:user)
  #   @stocks = Stock.includes(:user).order("created_at DESC")
  # end
  def create
    mee = Mee.create(mee_params)
    redirect_to "/stocks/#{mee.stock.id}"  
  end
  def destroy
  #   stock = Stock.find(params[:id])
  # if  stock.destroy
  #   redirect_to root_path
  # else
  #   render :index
  # end
  end

  private
  def mee_params
    params.require(:mee).permit(:text).merge(user_id: current_user.id, stock_id: params[:stock_id])
  end
end
