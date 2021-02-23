class Event < ApplicationRecord
  # belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
  belongs_to :user

  has_many :invitations, foreign_key: :attended_event_id
  has_many :attendees, through: :invitations, source: :attendee
end
