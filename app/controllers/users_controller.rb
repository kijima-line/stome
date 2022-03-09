class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = user.name
    @stocks = user.stocks
  end
end
