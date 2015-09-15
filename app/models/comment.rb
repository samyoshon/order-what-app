class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :menu

  has_many :user_comment_tables
  has_many :users, through: :user_comment_tables

  def likes
  	total_likes = 0
  	self.user_comment_tables.each do |count|
  		if count.like != nil
  			count.like > 0 ? total_likes += 1 : total_likes -= 1 
  		end
  	end
  	return total_likes
  end

  def vote
    
  end

end
