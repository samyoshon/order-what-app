class Menu < ActiveRecord::Base
  belongs_to :user
  belongs_to :business

  has_many :comments
  has_many :user_menu_tables
  has_many :users, through: :user_menu_tables

  def likes
  	total_likes = 0
  	self.user_menu_tables.each do |count|
  		if count.like != nil
  			count.like > 0 ? total_likes += 1 : total_likes -= 1 
  		end
  	end
  	return total_likes
  end

  def upvote

  end

  def downvote

  end

end
