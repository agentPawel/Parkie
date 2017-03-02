class Park < ApplicationRecord
  has_many :park_activities
  has_many :activities, through: :park_activities
  has_many :events, through: :park_activities

  validates :name, :address, presence: true
end
