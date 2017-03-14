class User < ApplicationRecord
  authenticates_with_sorcery!
  mount_uploader :avatar, AvatarUploader


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

# methods used for user phone verification
  def self.generate
  rand(100000..999999).to_s
  end

  def self.send_confirmation_to(user)
  code = self.generate
  user.update(verification: code)
  Message.send_code(user, code)
  end









end
