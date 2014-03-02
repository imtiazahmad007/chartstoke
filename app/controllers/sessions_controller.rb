class SessionsController < ApplicationController
	
	def new
	end

	def create
		user = User.find_by_email(params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to user
		else
			flash.now[:error] = 'The credentials provided are incorrect'
			render 'new'
		end
	end

	def destroy
		sign_out
		flash[:notice] = 'You have successfully signed out'
		redirect_to root_url
	end

end
