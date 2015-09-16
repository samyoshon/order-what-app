class RemoveLikeFromUserCommentTables < ActiveRecord::Migration
  def change
    remove_column :user_comment_tables, :like, :boolean
  end
end
