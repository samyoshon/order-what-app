class CommentsController < ApplicationController

before_action :authorize   

	def vote
		
		if UserCommentTable.where(user_id: session[:user_id]).exists?(comment_id: params[:comment_id])
			existing_user = UserCommentTable.where(user_id: session[:user_id], comment_id: params[:comment_id]).first
				
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
	  		comment_like = UserCommentTable.new(comment_id: params[:comment_id])
	  		comment_like.user_id = session[:user_id]
	  		comment_like.like = 1
	  		comment_like.save
	  		redirect_to business_new_path(params[:restaurant_id])

  		elsif params[:vote] == "down"
	  		comment_like = UserCommentTable.new(comment_id: params[:comment_id])
	  		comment_like.user_id = session[:user_id]
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
