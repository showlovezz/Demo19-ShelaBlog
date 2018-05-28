class Author::PortfoliosController < ApplicationController

  before_action :set_portfolio, only: [:show]

  def index
    @portfolios = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      flash[:notice] = "Portfolio 建立成功"
      redirect_to author_portfolios_path
    else
      flash[:alert] = "Portfolio 建立不成功"
      render "new"
    end
  end

  def show
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :body, :description, :image)
  end

  def set_portfolio
    @portfolio = Portfolio.friendly.find(params[:id])
  end

end
