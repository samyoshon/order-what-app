class AddTaglineToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :tagline, :string
  end
end
