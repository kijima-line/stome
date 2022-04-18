class UsersController < ApplicationController
  def index
    @users = User.all
    @all_ranks = Stock.find(Like.group(:stock_id).order('count(stock_id) desc').limit(3).pluck(:stock_id))
  end

  def show
    @user = User.find(params[:id])
    @stocks = Stock.order('created_at DESC').includes(:user)
    @mees = Mee.order('published_at ASC').includes(:user)
    @likes = Like.includes(:user)
    @user_stocks = @user.stocks
    @likes_count = 0
    # countメソッドを使い、１つの投稿に結びつくイイねを予め定義しておいた@likes_countに足していく。
    @user_stocks.each do |stock|
      @likes_count += stock.likes.count
    end
  end
end
