class Business < ActiveRecord::Base
  validates :description, :name, :user_id, :presence => true	
  attr_accessible :description, :name, :user_id

  belongs_to :user

  has_one :calendar

  has_many :events

  has_many :products

  has_many :gallery_images

  has_many :event_types
end
