class Subscription < ApplicationRecord
  has_many :users

  belong_to :users
end
