class UsersController < ApplicationController

	def login
		@email = params[:user][:email].downcase
    	@password = params[:user][:password]

    	user = User.find_by(email: @email).try(:authenticate, @password)

			if user
			    flash[:success] = User.find(user.id).name + ", let's eat!"
			    session[:user_id] = user.id
		        redirect_to business_path
	    	else
		    	flash.now[:red] = "Unable to sign in. Please try again."
		    	render 'new' ## // CHANGE PATH NAME
	    	end
	end


	def create
		@user = User.new(user_params)

		    if @user.save
		      flash[:success] = @user.name + ", let's eat!"
		      redirect_to business_path
		    else
		      render 'new' ## // CHANGE PATH NAME
		    end
	end

	def logout
      session[:user_id] = nil
      flash.now[:danger] = 'You have been logged out.'
      redirect_to business_path
 	end


 	def comment
		@comment = Comment.new(comment: params[:comment][:comment], menu_id: params[:menu_id])
		@comment.user = session[:user_id]
  		@comment.save
  		redirect_to business_new_path(params[:restaurant_id])
 	end

private

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
  	end

end
