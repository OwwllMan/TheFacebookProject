class UserController < ApplicationController
  def new
  	@user = User.new
  end

  def create
    @user = User.create(post_params)
    redirect_to '/'
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	@user.update(post_params)
  	redirect_to '/'
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/'
  end

  def show
  	@user = User.find(params[:id])
  end

  private

  def post_params
    params.require(:user).permit(:username,:email,:password)
  end

end
