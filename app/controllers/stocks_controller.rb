class StocksController < ApplicationController
  before_action :authenticate_user!, except: [:index,:show]
  before_action :set_stock, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show, :search]

  
  def index
    
    @stocks = Stock.order("created_at DESC").includes(:user)
    @mees = Mee.order("published_at ASC").includes(:user)
    #@likes = Like.all.includes(:user)

     #(params[:stock_id])
     #likes
    #@likes = @stock.likes.where
    # reverse_order,order
    # 昇順にしたい@mees = @stock.mees.order("published_at ASC").includes(:user)

  end
  
  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(stock_params)
    if @stock.save
      redirect_to "/stocks/#{@stock.id}", notice: 'タイトルを作成しました🎉'
    else
      render :new
    end
  end

  def destroy    
    stock = Stock.find(params[:id])
  if  stock.destroy
    redirect_to root_path,notice: '削除しました。'
  else
    render :index
  end
  end
  def edit

  end
  
  def update
    stock = Stock.find(params[:id])
  if stock.update(stock_params)
    redirect_to action: :show, notice2: '✅ ルーティンのタイトルを更新しました🎉'
  else
    redirect_to root_path
  end
  end
  
  def show
    # @stock = Stock.new
    # mees = Mee.find(params[:id])
     @mees = @stock.mees.order("published_at ASC").includes(:user)
     @mee = Mee.new
     #@likes = @stock.likes.all.includes(:user)
     
  end
  def search
    @stocks = Stock.search(params[:keyword])
    # @mees = Mee.search(params[:keyword])
  end



  private
  def stock_params
    params.require(:stock).permit(:title).merge(user_id: current_user.id)
  end
  
  def set_stock
    @stock = Stock.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
