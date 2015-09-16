class RemoveLikeFromUserMenuTables < ActiveRecord::Migration
  def change
    remove_column :user_menu_tables, :like, :boolean
  end
end
