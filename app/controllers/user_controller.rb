class UserController < ApplicationController
  def new
  	
  end

  def confirm

  end

  def index
    @user = User.all
  end

  def create
    @user = User.create(username: params[:username],email: params[:email],password: params[:password])
    if !@user.valid?
      redirect_to '/error'
    else
      redirect_to '/confirm'
    end
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
  	@username = User.find_by(username: params[:username]).username
  	@email = User.find_by(username: params[:username]).email
  end

  private

  def post_params
    params.require(:users).permit(:username,:email,:password)
  end

end
