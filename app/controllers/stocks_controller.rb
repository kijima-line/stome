class StocksController < ApplicationController
  def index
    @stocks = Stock.all
  end
  
  def new
    @stock = Stock.new
  end

  def create
    Stock.create(stock_params)
    redirect_to root_path

  end

  def destroy
    stock = Stock.find(params[:id])
  if  stock.destroy
    redirect_to root_path
  else
    render :index
  end
    
  end

  private
  def stock_params
    params.require(:stock).permit(:name)
  end

  
end
