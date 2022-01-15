class PostsController < ApplicationController
  # before_action :login_required
  
  def new
    @post = Post.new
  end 
  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    end
    render :new
  end 
  
  def index
    @posts = Posts.order(params[:id])
  end 


 private
  def post_params
    params.require(:post).permit(:user_id, :timer_id)
  end

end
