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
     stock = Stock.find(params[:stock_id])
     mee = @stock.mees.find(params[:id])
    if current_user.id == mee.user.id
      mee.destroy
      redirect_to request.referer
    else
      render "stocks/show"
    end
  end
    def edit
      @mee = Mee.find(params[:id])
      stock = @mee.stock
    end

      # @mee   = @stock.mees.(params[:id]) 
      # @stock = Stock.find(params[:id])
    def update
      # mee = Mee.find(params[:id])
      # mee.update(mee_params)
    end

  private
  def mee_params
    params.require(:mee).permit(:text,:published_at).merge(user_id: current_user.id, stock_id: params[:stock_id])
  end
end
