class AddLikeToUserCommentTables < ActiveRecord::Migration
  def change
    add_column :user_comment_tables, :like, :integer
  end
end
