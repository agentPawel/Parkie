class Subscription < ApplicationRecord
  belongs_to :park_activity
  belongs_to :users

  has_one :parks, through: :park_activity
  has_one :activities, through: :park_activity

  validates :park_activity_id, :user_id, presence: true
end
