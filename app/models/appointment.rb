class Appointment < ActiveRecord::Base
  attr_accessible :appointment_time, :user_id
end
