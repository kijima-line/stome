class StocksController < ApplicationController
  before_action :set_stock, only: [:edit, :show]

  
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
  def edit

  end
  
  def update
    stock = Stock.find(params[:id])
  if stock.update(stock_params)
    redirect_to root_path
  else
    render :index
  end
  end
  def show
  end



  private
  def stock_params
    params.require(:stock).permit(:name)
  end
  
  def set_stock
    @stock = Stock.find(params[:id])
  end

  
end
