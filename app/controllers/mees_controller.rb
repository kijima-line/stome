class MeesController < ApplicationController
  def create
    @mee = Mee.new(mee_params)
    if @mee.save
      redirect_to stock_path(params[:stock_id])
    end
  end

  private
  def mee_params
    params.require(:mee).permit(:text).merge(user_id: current_user.id, stock_id: params[:stock_id])
  end
end
