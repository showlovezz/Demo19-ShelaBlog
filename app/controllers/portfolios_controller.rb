class PortfoliosController < ApplicationController

  def index
    @portfolios = Portfolio.order("created_at DESC")
  end

  def show
    @portfolio = Portfolio.friendly.find(params[:id])
  end

end
