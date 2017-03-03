class Activity < ApplicationRecord
  has_many :park_activities
  has_many :parks, through: :park_activities


  validates :name, presence: true

  # accepts_nested_attributes_for :parks
end
