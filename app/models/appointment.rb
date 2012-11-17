class Appointment < ActiveRecord::Base
  attr_accessible :appointment_time, :user_id, :calendar_id

  belongs_to :user

  belongs_to :calendar
end
