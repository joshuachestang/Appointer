class CreateGalleryImages < ActiveRecord::Migration
  def change
    create_table :gallery_images do |t|
      t.integer :business_id
      t.string :caption
      t.has_attached_file :image

      t.timestamps
    end
  end
end
