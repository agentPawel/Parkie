class Event < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  belongs_to :park_activity
  has_many :participants
  has_many :attendees, class_name: "User", through: :participants, source: :user
  has_one :park, through: :park_activities
  has_one :activity, through: :park_activities

  validates :date_time, :user_id, :park_activity_id, presence: true
end
