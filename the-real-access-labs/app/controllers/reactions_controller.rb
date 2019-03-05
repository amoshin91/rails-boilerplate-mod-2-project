class ReactionsController < ActionController::Base

	before_action :get_reaction, only: [:show, :edit, :update, :destroy]

	def index
		
	end

	def show
		
	end

	def new
		@reaction = Reaction.new
	end

	def create
		@reaction = Reaction.create(reaction_params)
		redirect_to @reaction
	end

	def edit
		
	end

	def update
		@reaction.update(reaction_params)
		redirect_to @reaction
	end

	def destroy
		@reaction.delete(reaction_params)
		redirect_to reaction_path
	end

	private

	def get_reaction
		@reactions = Reaction.find(params[:id])
	end

	def reaction_params
		params.require(:reaction).permit(:user_id, :comment_id, :reaction)
	end

end