class CreateUserCommentTables < ActiveRecord::Migration
  def change
    create_table :user_comment_tables do |t|
      t.references :user, index: true, foreign_key: true
      t.references :comment, index: true, foreign_key: true
      t.boolean :like

      t.timestamps null: false
    end
  end
end
