class AppointmentType < ActiveRecord::Base
  attr_accessible :business_id, :duration, :title

  belongs_to :business 

end
