class CommentController < ApplicationController
  def new
  	@comment = Comment.new
  end

  def create
    @comment = Comment.create(post_params)
    redirect_to '/'
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
  	@comment = Comment.find(params[:id])
  	@comment.update(post_params)
  	redirect_to '/'
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to '/'
  end

  def show
  	@comment = Comment.find(params[:id])
  end

  private

  def post_params
    params.require(:comment).permit(:author_com,:content_com)
  end
end
