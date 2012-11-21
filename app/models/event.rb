class Event < ActiveRecord::Base
  validates :name, :business_id, :start_at, :user_id, :presence => true
  attr_accessible :business_id, :end_at, :name, :start_at, :user_id
  has_event_calendar

  belongs_to :business
  belongs_to :user


  


end
