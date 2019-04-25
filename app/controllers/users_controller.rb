class UsersController < ApplicationController
	before_action :correct_user, only: [:edit, :update, :delete]

	def destroy
	@user = User.find params[:id]
	@user.destroy
	redirect_to users_path
	end

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
		if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @user.image = req["public_id"]
    end
		@user.update_attributes(user_params)
		@user.save
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
		if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @user.image = req["public_id"]
		end
  end

	def show
		@user = User.find params[:id]
		@posts = @user.posts
		@post = @user.posts.new
		render :show
	end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image, :file)
  end

	def correct_user
		@user = User.find params[:id]
		redirect_to root_path unless current_user?(@user)
	end
end
