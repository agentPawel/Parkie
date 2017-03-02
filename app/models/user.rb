class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :owned_events, class_name: "Event"
  has_many :subscriptions
  has_many :participants
  has_many :attended_events, class_name: "Event", through: :participants, source: :event

  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true
  validates :email, presence: true
  validates :username, presence: true
  validates :username, uniqueness: true
  # validates :first_name, presence: true
  # validates :last_name, presence: true
end
