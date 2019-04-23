class PostsController < ApplicationController
	def create
		@post = @current_user.posts.build(post_params)
		@post.save
		redirect_to @current_user
	end

	def show
		@post = Post.find params[:id]
		@comment = @post.comments.new
		@comments = Comment.all
	end

	def index
		@posts = Post.all
		@users = User.find_by params[:id]
	end

	private
  	def post_params
    	params.require(:post).permit(:content)
  	end
end
