class SessionsController < ApplicationController

	respond_to :json
	def login
		render :"sessions/index"
	end

	def create 
		if request.xhr?
		render json: @user = User.authenticate(params[:email], params[:password])
		if @user	
			session[:user_id] = @user.id
		else
		 @errors = "Your credential don't match"
		end	
	end
end


