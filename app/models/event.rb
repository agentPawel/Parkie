class Event < ApplicationRecord
  belongs_to :owner, class_name: "user"
  belongs_to :parkactivities
  has_many :eventattendances
end
