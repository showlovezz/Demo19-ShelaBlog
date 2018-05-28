class TechnotesController < ApplicationController

  def index
    @technotes = Technote.order("created_at DESC")
  end

  def show
    @technote = Technote.friendly.find(params[:id])
  end

end
