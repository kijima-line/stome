class StocksController < ApplicationController
  before_action :set_stock, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  
  def index
    @stocks = Stock.includes(:user).order("created_at DESC")
  end
  
  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(stock_params)
    if @stock.save
      redirect_to "/stocks/#{@stock.id}", notice: '題名の作成が完了しました。'
    else
      render :new
    end
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
    # @stock = Stock.new(stock_params)
    @mees = @stock.mees.includes(:user)
    @mee = Mee.new
    
  end



  private
  def stock_params
    params.require(:stock).permit(:name).merge(user_id: current_user.id)
  end
  
  def set_stock
    @stock = Stock.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  
end
