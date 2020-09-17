# frozen_string_literal: true

class User < ApplicationRecord
  has_many :event_attendees
  has_many :events, through: :event_attendees
  has_many :created_events, foreign_key: :creator_id, class_name: 'Event'
  has_one_attached :avatar

  validates :username, presence: true, uniqueness: { case_sensitive: false }
end
