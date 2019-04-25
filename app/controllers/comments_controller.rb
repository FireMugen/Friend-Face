class CommentsController < ApplicationController
	def create
		@post = Post.find params[:comment][:post_id]
		@comment = @post.comments.build(comment_params)
		@comment.save
		redirect_to post_path(@post.id)
	end

	def destroy
		@comment = Comment.find params[:id]
		@comment.destroy
		redirect_to post_path(@comment.post_id)
	end

	def show
	end

	private
		def comment_params
			params.require(:comment).permit(:content, :post_id, :user_id)
		end

end
