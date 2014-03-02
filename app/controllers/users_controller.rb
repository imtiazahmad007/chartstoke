class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Welcome to the Sample App!"
			redirect_to @user
			sign_in @user
		else

			render "new"
		end
	end

	def index
		@users = User.all
	end

	def show

	end

	# These are admin methods that should only be available to administrator role
	
	def edit
	end

	def destroy
		redirect_to root_url

	end

	def update
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	private
		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation)
		end

		def set_user
			 @user = User.find(params[:id])
		end

end
