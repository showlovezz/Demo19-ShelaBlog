class Author::TechnotesController < ApplicationController

  def index
    @technotes = Technote.order("created_at DESC")
  end

end
