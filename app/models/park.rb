class Park < ApplicationRecord
  has_many :park_activities
  has_many :activities, through: :park_activities
  has_many :events, through: :park_activities
  validates :name, :address, presence: true
  # accepts_nested_attributes_for :activities
  geocoded_by :address       # can also be an IP address
  after_validation :geocode, :if => :address_changed?




  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end







end
