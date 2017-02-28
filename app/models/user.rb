class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :ownedevents, class_name: 'events'
  has_many :subscriptions
  has_many :eventattendances
  has_many :attendedevents, through: :eventattendances, source: :events

  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true
end
