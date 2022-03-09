class StocksController < ApplicationController
  def index
    @stocks = Stock.all
  end
  
  def new
    @stocks = Stock.new
  end

  
end
