class UsersController < ApplicationController
  def show
    @stocks = Stock.order("created_at DESC").includes(:user)
    @mees = Mee.order("published_at ASC").includes(:user)
    @user = User.find(params[:id])
  end
end
