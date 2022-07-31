class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :feeling, :color]
  before_action :set_post, except: [:index, :new, :create]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]

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
  end

  def destroy
    @post.destroy
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post.id)
    else
      render :edit
    end
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

  def set_post
    @post = Post.find(params[:id])
  end

  def contributor_confirmation
    redirect_to root_path unless current_user.id == @post.user_id
  end
end