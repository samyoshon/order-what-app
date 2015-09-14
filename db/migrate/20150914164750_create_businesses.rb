class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :type
      t.integer :rating
      t.string :address

      t.timestamps null: false
    end
  end
end
