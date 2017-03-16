class ParticipantsController < ApplicationController

  def create
    @participants = Participant.new
    @participants.user_id = current_user.id
    @participants.event_id = params[:event]
    if @participants.save
      event = Event.find(params[:event])
      event.count += 1
      event.save
      if current_user.verification == "verified"
        participant_event_join_message
      end
      if Event.find(params[:event]).owner.verification == "verified"
        owner_event_join_message
      end
      redirect_to user_path(current_user.id)
    else
      redirect_to user_path(current_user.id)
    end
  end

  def destroy
    user = current_user.id
    event = params[:event]
    @participant = Participant.find_by(user_id: user, event_id: event)
    if @participant.destroy
      Event.find(event).count -= 1
      if current_user.verification == "verified"
        participant_cancel_message
      end
      if Event.find(params[:event]).owner.cell != nil && Event.find(params[:event]).owner.verification == "verified"
        owner_participant_cancel_message
      end
      redirect_to user_path(current_user.id)
    else
      redirect_to user_path(current_user.id)
    end

  end

  def participant_event_join_message
    owner = Event.find(params[:event]).owner.username
    activity = Event.find(params[:event]).activity.name
    park = Event.find(params[:event]).park.name
    time = Event.find(params[:event]).date_time
    body = "PARKIE: You've joined #{owner}'s #{activity} event at #{park} for #{time.strftime("%I:%M%p")}!"
    Message.send_message(current_user.cell, body)
  end

  def participant_cancel_message
    owner = Event.find(params[:event]).owner.username
    activity = Event.find(params[:event]).activity.name
    park = Event.find(params[:event]).park.name
    time = Event.find(params[:event]).date_time
    body = "PARKIE: You've canceled your participation for #{owner}'s #{activity} event at #{park} for #{time.strftime("%I:%M%p")}!"
    Message.send_message(current_user.cell, body)
  end

  def owner_event_join_message
    owner = Event.find(params[:event]).owner.username
    owner_cell = Event.find(params[:event]).owner.cell
    park = Event.find(params[:event]).park.name
    time = Event.find(params[:event]).date_time
    activity = Event.find(params[:event]).activity.name
    participant = current_user.username
    body = "PARKIE: Hi #{owner}! #{participant} has just joined your #{activity} event at #{park} for #{time.strftime("%I:%M%p")}!"
    Message.send_message(owner_cell, body)
  end

  def owner_participant_cancel_message
    owner = Event.find(params[:event]).owner.username
    owner_cell = Event.find(params[:event]).owner.cell
    park = Event.find(params[:event]).park.name
    time = Event.find(params[:event]).date_time
    activity = Event.find(params[:event]).activity.name
    participant = current_user.username
    body = "PARKIE: Hi #{owner}! #{participant} has just cancelled their participation for your #{activity} event at #{park} for #{time.strftime("%I:%M%p")}!"
    Message.send_message(owner_cell, body)
  end





end
