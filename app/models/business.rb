class Business < ActiveRecord::Base
  attr_accessible :description, :name, :user_id

  belongs_to :user

  has_many :products
end
