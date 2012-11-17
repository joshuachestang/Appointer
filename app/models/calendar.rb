class Calendar < ActiveRecord::Base
  attr_accessible :business_id

  belongs_to :business
end
