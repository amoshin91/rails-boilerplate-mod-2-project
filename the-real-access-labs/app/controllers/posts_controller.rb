class PostsController < ActionController::Base

	before_action :get_posts, only: [:edit, :update, :destroy, :show]

	def index
		@posts = Post.all
	end

	def show
		
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(post_params)
		# byebug
		redirect_to @post
	end

	def edit
		
	end

	def update
		@post.update(post_params)
		redirect_to @post
	end

	def destroy
		@post.destroy(post_params)
		redirect_to posts_path
	end

	private

	def post_params
		params.require(:post).permit(:title, :content)
	end

	def get_posts
		@post = Post.find(params[:id])
	end

end
