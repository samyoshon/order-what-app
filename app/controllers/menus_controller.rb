class MenusController < ApplicationController

	def vote

	  	if params[:vote] == "up"
	  		menu_like = UserMenuTable.new(menu_id: params[:menu_id])
	  		menu_like.user = session[:user_id]
	  		menu_like.like = 1
	  		menu_like.save
	  		redirect_to business_new_path(params[:restaurant_id])

	  	elsif params[:vote] == "down"
	  		menu_like = UserMenuTable.new(menu_id: params[:menu_id])
	  		menu_like.user = session[:user_id]
	  		menu_like.like = -1
	  		menu_like.save
	  		redirect_to business_new_path(params[:restaurant_id])
	  	end		
	end
end
