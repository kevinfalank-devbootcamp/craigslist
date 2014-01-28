class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.float :price
      t.string :email
      t.string :name
      t.string :description
      t.integer :category_id
      t.string :key
      t.timestamps
    end
  end
end
