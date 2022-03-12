class MeesController < ApplicationController
  # def index
  #   @mees = Mee.includes(:user)
  #   @stocks = Stock.includes(:user).order("created_at DESC")
  # end

  def new
    @stock = Stock.find(params[:stock_id])
    @mee = Mee.new
  end

  def create
    mee = Mee.create(mee_params)
    redirect_to "/stocks/#{mee.stock.id}"  
  end
  def destroy
     @stock = Stock.find(params[:stock_id])
     mee = @stock.mees.find(params[:id])
    if current_user.id == mee.user.id
      mee.destroy
      redirect_to request.referer
    else
      render "stocks/show"
    end
  end
    def edit
      @stock = Stock.find(params[:stock_id])
      @mee = @stock.mees.all
    end
    def update
      mee = Mee.find(params[:id])
      mee.update(mee_params)
      redirect_to root_path
    end

  private
  def mee_params
    params.require(:mee).permit(:text).merge(user_id: current_user.id, stock_id: params[:stock_id])
  end
end
