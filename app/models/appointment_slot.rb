class AppointmentSlot < ActiveRecord::Base
  validates :name, :start_at, :user_id, :business_id, :presence => true
  attr_accessible :end_at, :name, :start_at, :user_id, :appointment_type_id, :business_id

  belongs_to :user

  belongs_to :business

  has_one :appointment_type

  before_save :set_end_time

  def set_end_time
  	f = AppointmentType.find_by_id(self.appointment_type_id)
  	h = f.duration.minutes
  	self.end_at = self.start_at + h 
  end 
end
