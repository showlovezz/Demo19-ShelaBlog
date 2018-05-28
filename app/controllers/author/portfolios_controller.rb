class Author::PortfoliosController < ApplicationController

  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

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

  def edit
  end

  def update
    if @portfolio.update(portfolio_params)
      flash[:notice] = "Portfolio 修改成功"
      redirect_to author_portfolios_path
    else
      flash[:alert] = "Portfolio 修改不成功"
      render "edit"
    end
  end

  def destroy
    @portfolio.destroy
    flash[:alert] = "Portfolio 刪除"
    redirect_to author_portfolios_path
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :body, :description, :image)
  end

  def set_portfolio
    @portfolio = Portfolio.friendly.find(params[:id])
  end

end
