class CreatePostlocations < ActiveRecord::Migration
  def change
    create_table :postlocations do |t|
      t.references :user, index: true
      t.references :post, index: true

      t.timestamps null: false
    end
    add_foreign_key :postlocations, :users
    add_foreign_key :postlocations, :posts
  end
end
