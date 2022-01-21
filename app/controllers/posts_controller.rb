class PostsController < ApplicationController
  # before_action :login_required

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to posts_path
    end
    # render :new
  end

  def index
    @posts = Post.page(params[:page]).reverse_order
    
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  
 private
  def post_params
    params.require(:post).permit(:user_id, :timer_id)
  end

end
