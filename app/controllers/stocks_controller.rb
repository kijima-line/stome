class StocksController < ApplicationController
  def index
    @stocks = Stock.all
  end
  
  def new
    @stock = Stock.new
  end

  def create
    Stock.create(stock_params)
  end

  private
  def stock_params
    params.require(:stock).permit(:name)
  end

  
end
