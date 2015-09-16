class CommentsController < ApplicationController

	def vote
		
	  	if params[:vote] == "up"
	  		comment_like = UserCommentTable.new(comment_id: params[:comment_id])
	  		comment_like.user = session[:user_id]
	  		comment_like.like = 1
	  		comment_like.save
	  		redirect_to business_new_path(params[:restaurant_id])

	  	elsif params[:vote] == "down"
	  		comment_like = UserCommentTable.new(comment_id: params[:comment_id])
	  		comment_like.user = session[:user_id]
	  		comment_like.like = -1
	  		comment_like.save
	  		redirect_to business_new_path(params[:restaurant_id])
	  	end		
	end

end
