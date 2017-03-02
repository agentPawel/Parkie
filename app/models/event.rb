class Event < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  belongs_to :park_activity
  has_many :participants
  has_many :attendees, class_name: "User", through: :participants, source: :user

  validates :date_time, :user_id, :park_activity_id, presence: true
end
