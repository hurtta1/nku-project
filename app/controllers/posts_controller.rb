class PostsController < ApplicationController
  
  def index
    @post = Post.all
  end
  
  def new 
    @post = Post.new
  end
  
  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to posts_path
    else 
      render 'new'
    end
  end
  
  def edit
    @post = current_post
  end
  
  def update
    current_post.update_attributes(post_params)
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end

 private  
  def post_params
    params.require(:post).permit!
  end
end