class GalleryImage < ActiveRecord::Base
  validates :business_id, :caption, :image, :presence => true

  attr_accessible :business_id, :caption, :image

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  belongs_to :business
end
