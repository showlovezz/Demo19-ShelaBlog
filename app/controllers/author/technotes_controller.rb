class Author::TechnotesController < ApplicationController

  def index
    @technotes = Technote.order("created_at DESC")
  end

  def new
    @technote = Technote.new
  end

  def create
    @technote = Technote.new(technote_params)
    if @technote.save
      flash[:notice] = "TechNote 建立成功"
      redirect_to author_technotes_path
    else
      flash[:alert] = "TechNote 建立不成功"
      render "new"
    end
  end

  private

  def technote_params
    params.require(:technote).permit(:title, :body, :description, :image)
  end

end
