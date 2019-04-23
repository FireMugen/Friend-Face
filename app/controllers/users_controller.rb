class UsersController < ApplicationController
	before_action :correct_user, only: [:edit, :update]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

	def edit
		@user = User.find params[:id]
		render :edit
	end

	def update
		@user = User.find params[:id]
		@user.update user_params
		redirect_to @user
	end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

	def show
		@user = User.find params[:id]
		@post = @user.posts.new
		@posts = @user.posts
		render :show
	end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :image)
  end

	def correct_user
		@user = User.find params[:id]
		redirect_to root_path unless current_user?(@user)
	end
end
