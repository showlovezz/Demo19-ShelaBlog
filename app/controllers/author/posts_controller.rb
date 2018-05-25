class Author::PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]

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

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      flash[:notice] = "Post 修改成功"
      redirect_to author_posts_path
    else
      flash[:alert] = "Post 修改不成功"
      render "edit"
    end
  end

  def destroy
    @post.destroy
    flash[:alert] = "Post 刪除"
    redirect_to author_posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :description, :image)
  end

  def set_post
    @post = Post.friendly.find(params[:id])
  end

end