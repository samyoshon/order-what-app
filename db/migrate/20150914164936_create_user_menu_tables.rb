class CreateUserMenuTables < ActiveRecord::Migration
  def change
    create_table :user_menu_tables do |t|
      t.references :user, index: true, foreign_key: true
      t.references :menu, index: true, foreign_key: true
      t.boolean :like

      t.timestamps null: false
    end
  end
end
