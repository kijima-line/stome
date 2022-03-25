class MeesController < ApplicationController
  # def index
  #   @mees = Mee.includes(:user)
  #   @stocks = Stock.includes(:user).order("created_at DESC")
  # end

  def new
    @stock = Stock.find(params[:stock_id])
    @mee = Mee.new
  end

  def create
    mee = Mee.create(mee_params)
   if mee.valid?
    
    redirect_to "/stocks/#{mee.stock.id}" ,notice: '✏️追加しました。'
  else
    redirect_to "/stocks/#{mee.stock.id}" ,notice: '記入してください。'
  end
   
  end
  def destroy
     stock = Stock.find(params[:stock_id])
     mee = stock.mees.find(params[:id])
    if current_user.id == mee.user.id
      mee.destroy
      redirect_to request.referer,notice: '⚠️削除しました'
    else
      render "stocks/show"
    end
  end
    def edit
      @stock = Stock.find(params[:stock_id])
      @mee   = @stock.mees.find(params[:id])
      unless user_signed_in?
        redirect_to root_path
      end
    end
    def update
      @stock = Stock.find(params[:stock_id])
      @mees   = @stock.mees.find(params[:id])
     if @mees.update(mee_params)
      redirect_to "/stocks/#{@stock.id}",notice: 'コメントを更新しました。'
      else
      render :edit
      end
    end
    def search
      # @stocks = Stock.search(params[:keyword])
      # @mees = Mee.search(params[:keyword])
    end
  

  private
  def mee_params
    params.require(:mee).permit(:text,:published_at).merge(user_id: current_user.id, stock_id: params[:stock_id])
  end
end
