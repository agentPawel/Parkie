class User < ApplicationRecord
  authenticates_with_sorcery!

  #has_many :ownedevents, class_name: 'Events'
  has_many :events
  has_many :subscriptions
  has_many :participants
  has_many :attendedevents, through: :participants, source: :events

  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true
  validates :email, presence: true
  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
