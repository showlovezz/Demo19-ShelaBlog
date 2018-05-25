class Author::PostsController < ApplicationController

  def index
    @posts = Post.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post 建立成功"
      redirect_to author_posts_path
    else
      flash[:alert] = "Post 建立不成功"
      render "new"
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :description)
  end

end