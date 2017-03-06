class Message < ApplicationRecord



TWILIO_CLIENT = Twilio::REST::Client.new(Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token)
APP_NUMBER = Rails.application.secrets.twilio_num





  def self.send_message(to, body, *subscription_id)
    TWILIO_CLIENT.messages.create(
      from: APP_NUMBER,
      to: to,
      body: body
    )
    message = Message.create(
      body: body,
      to_num: to,
      from_num: APP_NUMBER,

    )
    message
  end




end
