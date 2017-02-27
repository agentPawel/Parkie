class Subscription < ApplicationRecord
  belongs_to :parkactivity
  belongs_to :users
end
