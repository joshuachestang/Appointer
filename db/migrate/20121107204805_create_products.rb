class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :business_id
      t.string :name
      t.integer :price
      t.has_attached_file :product_picture

      t.timestamps
    end
  end
end
