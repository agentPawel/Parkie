class Subscription < ApplicationRecord
  belongs_to :park_activity
  belongs_to :users

  validates :park_activity_id, :user_id, presence: true
end
