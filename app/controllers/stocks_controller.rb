class StocksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :search]
  before_action :set_stock, only: [:edit, :show]
  before_action :move_to_index, except: [:index ,:show,:search]
  before_action :set_lank, only: [:index, :new]

  def index
    @stocks = Stock.order('created_at DESC').includes(:user)
    @mees = Mee.order('published_at ASC').includes(:user)
    @comments = Comment.order('created_at DESC').includes(:user)
    
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
    if stock.destroy
      redirect_to root_path, notice: '削除しました。'
    else
      render :index
    end
  end

  def update
    stock = Stock.find(params[:id])
    if stock.update(stock_params)
      redirect_to request.referer, notice: '✅ タイトルを更新しました🎉'
    else
      redirect_to root_path
    end
  end

  def show
    @stock = Stock.find(params[:id])
    @mees = @stock.mees.order('published_at ASC').includes(:user)
    @mee = Mee.new
    # like = @stock.likes
    #@comments = @stock.comments.includes(:user)
    @comment =Comment.new
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

  def set_lank
    @all_ranks = Stock.find(Like.group(:stock_id).order('count(stock_id) desc').limit(3).pluck(:stock_id))
  end

  def move_to_index
    redirect_to root_path unless user_signed_in?
  end

end
