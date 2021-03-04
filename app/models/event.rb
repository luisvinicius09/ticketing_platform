class Event < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  belongs_to :user, optional: true

  has_many :invitations, foreign_key: :attended_event_id
  has_many :attendees, through: :invitations, source: :attendee

  scope :prev_events, -> { where('datetime < ?', Date.current) }
  scope :next_events, -> { where('datetime >= ?', Date.current) }
end
