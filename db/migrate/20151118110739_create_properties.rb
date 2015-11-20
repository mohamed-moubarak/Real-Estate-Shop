class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.references :user, index: true
      t.string :description
      t.string :street
      t.string :area
      t.string :city
      t.integer :building_no
      t.integer :apartement_no
      t.string :famous_site
      t.integer :surface_area
      t.integer :price_from
      t.integer :price_to

      t.timestamps null: false
    end
    add_foreign_key :properties, :users
  end
end
