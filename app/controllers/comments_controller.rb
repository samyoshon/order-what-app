class CommentsController < ApplicationController

before_action :authorize   

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

	def destroy
		
		association = UserCommentTable.where(comment_id: params[:comment_id]).all
        association.each do |a|
        	a.destroy
        end
        
        comment = Comment.find(params[:comment_id])
        comment.destroy

	# 	comment_table.each do |c|
	# 		c.destroy
	# 	end	
	    #user = current_user
	   # user.comments.find(params[:comment_id]).delete
		#comment = Comment.find(params[:comment_id]).all
			#comment.destroy	
		
		redirect_to business_new_path(params[:restaurant_id])
	end

end
