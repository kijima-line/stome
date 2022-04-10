class LikesController < ApplicationController
  def create
    like = current_user.likes.build(stock_id: params[:stock_id])
    if like.save
      redirect_back(fallback_location: root_path, notice: '「やってみたい👍」しました')
    else
      @stock = like.stock
      like = @stock.likes
      redirect_back(fallback_location: root_path, notice: 'すでに「やってみたい👍」してます')
    end
  end

  def destroy
    @user = current_user
    @stock = Stock.find(params[:stock_id])
    if like = Like.find_by(user_id: @user.id, stock_id: @stock.id)
      like.destroy
      redirect_back(fallback_location: root_path, notice: '「やってみたい👍」を解除しました')
    else
      redirect_back(fallback_location: root_path, notice: '「やってみたい👍」を押してください')
    end
  end
end
