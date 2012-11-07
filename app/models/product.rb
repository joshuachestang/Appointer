class Product < ActiveRecord::Base
  attr_accessible :business_id, :name, :price, :product_image

  belongs_to :business

  has_attached_file :product_image
end
