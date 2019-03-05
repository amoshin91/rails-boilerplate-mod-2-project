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
		redirect_to @post
	end

	def edit
		
	end

	def update
		@post.update(post_params)
		redirect_to @post
	end

	def destroy
		redirect_to posts_path
	end

	private

	def user_params
		params.require(:post).permit(:username, :first_name, :last_name, :email, :password, :profile_pic)
	end

	def get_posts
		@post = Post.find(params[:id])
	end

end