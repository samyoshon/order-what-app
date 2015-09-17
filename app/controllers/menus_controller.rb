class MenusController < ApplicationController

before_action :authorize   

	def vote

		if UserMenuTable.where(user_id: session[:user_id]).exists?(menu_id: params[:menu_id])
			existing_user = UserMenuTable.where(user_id: session[:user_id], menu_id: params[:menu_id]).first
				
				if params[:vote] == "up" && existing_user.like == -1
					existing_user.like += 2
					existing_user.save
				elsif params[:vote] == "down" && existing_user.like == 1
					existing_user.like -= 2
					existing_user.save
				else 
					existing_user.destroy
					existing_user.save
				end

			redirect_to business_new_path(params[:restaurant_id])

		elsif params[:vote] == "up"

	  		menu_like = UserMenuTable.new(menu_id: params[:menu_id])
	  		menu_like.user_id = session[:user_id]
	  		menu_like.like = 1
	  		menu_like.save
	  		redirect_to business_new_path(params[:restaurant_id])

	  	elsif params[:vote] == "down"

	  		menu_like = UserMenuTable.new(menu_id: params[:menu_id])
	  		menu_like.user_id = session[:user_id]
	  		menu_like.like = -1
	  		menu_like.save
	  		redirect_to business_new_path(params[:restaurant_id])

	  	end		
	end
end
