class Event < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  has_many :attendees, class_name: "User", through: :participants, source: :user
  has_many :participants

  belongs_to :park_activity
  has_one :park, through: :park_activity
  has_one :activity, through: :park_activity

  validates :date_time, :user_id, :park_activity_id, presence: true
end
