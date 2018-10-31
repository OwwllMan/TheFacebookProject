class PostController < ApplicationController
def new
  	@post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to '/'
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
  	@post = Post.find(params[:id])
  	@post.update(post_params)
  	redirect_to '/'
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/'
  end

  def show
  	@post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:author_post,:content_post)
  end

end
