class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :feeling, :color]

  def index
    @posts = Post.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def feeling
    @posts = Post.where(feeling_id: params[:id]).order("created_at DESC")
  end

  def color
    @posts = Post.where(color_id: params[:id]).order("created_at DESC")
  end

  private

  def post_params
    params.require(:post).permit(:text, :feeling_id, :color_id, :image).merge(user_id: current_user.id)
  end
end
