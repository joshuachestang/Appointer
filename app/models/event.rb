class Event < ActiveRecord::Base
  validates :name, :business_id, :start_at, :user_id, :presence => true
  attr_accessible :business_id, :end_at, :name, :start_at, :user_id, :event_type_id
  has_event_calendar

  belongs_to :business
  belongs_to :user

  has_one :event_type

  before_save :set_end_time

  def set_end_time
  	f = EventType.find_by_id(self.event_type_id)
  	h = f.duration.minutes
  	self.end_at = self.start_at + h 
  end


end
