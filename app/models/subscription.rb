class Subscription < ApplicationRecord
  belongs_to :park_activity
  belongs_to :users

  has_many :parks, through: :park_activity
  has_many :activities, through: :park_activity

  validates :park_activity_id, :user_id, presence: true
end
