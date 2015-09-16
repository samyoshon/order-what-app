class AddLikeToUserMenuTables < ActiveRecord::Migration
  def change
    add_column :user_menu_tables, :like, :integer
  end
end
