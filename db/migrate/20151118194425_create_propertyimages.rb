class CreatePropertyimages < ActiveRecord::Migration
  def change
    create_table :propertyimages do |t|
      t.references :property, index: true
      t.string :image_url

      t.timestamps null: false
    end
    add_foreign_key :propertyimages, :properties
  end
end
