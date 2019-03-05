class CommentsController < ActionController::Base

	before_action :get_comments, only: [:show, :edit, :update, :destroy]

	def index
		@comments = Comment.all
	end

	def show
		
	end

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.create(comment_params)
		redirect_to @comment
	end

	def edit

	end

	def update
		@comment.update(comment_params)
		redirect_to @comment
	end

	def destroy
		@comment.delete(comment_params)
		redirect_to comment_path
	end

	private

	def get_comments
		@comments = Comment.find(params[:id])
	end

	def comment_params
		params.require(:comment).permit(:comment)
	end

end