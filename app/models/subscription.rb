class Subscription < ApplicationRecord
  belongs_to :park_activity
  belongs_to :users
end
