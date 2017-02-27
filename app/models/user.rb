class User < ApplicationRecord
  has_many :ownedevents, source: :events
  has_many :subscriptions
  has_many :eventattendances
  has_many :attendedevents, through: :eventattendances, source: :events
end
