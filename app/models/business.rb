class Business < ActiveRecord::Base
  validates :description, :name, :user_id, :presence => true	
  attr_accessible :description, :name, :user_id, :open_time, :close_time

  belongs_to :user

  has_many :appointment_slots

  has_many :products

  has_many :gallery_images

  has_many :appointment_types

  after_create :create_appointment_slots

  def create_appointment_slots
  	#create time slots today starting at 9am and ending at 5pm
  	#should increment every 30 minutes for start at time
  	
  	AppointmentSlot.create(:business_id => self.id, :start_at => self.open_time, :end_at => self.open_time + 30.minutes )




  end
end
