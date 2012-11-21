class Product < ActiveRecord::Base
  validates :name, :price, :product_image, :business_id, :presence => true
  attr_accessible :business_id, :name, :price, :product_image

  belongs_to :business

  has_attached_file :product_image
end
