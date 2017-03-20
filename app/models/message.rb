class Message < ApplicationRecord



TWILIO_CLIENT = Twilio::REST::Client.new(ENV['twilio_account_sid'], ENV['twilio_auth_token'])
APP_NUMBER = Rails.application.secrets.twilio_num



  def self.receive_message(params)
  message = Message.create({
  body: params[:Body],
  to_num: params[:To],
  from_num: params[:From]
  })

  end



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


  # TWILIO_CLIENT.messages.create(from: "+1 647-931-1815", to: '4164283530', body: 'test')

  def self.send_code(user, verification)
    body = "Here is your verification code: " + verification
    self.send_message(user.cell, body)
  end



end
