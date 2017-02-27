class Event < ApplicationRecord
  belongs_to :owner, source: :user
  belongs_to :parkactivities
  has_many :eventattendances
end
