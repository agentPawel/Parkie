class ParticipantsController < ApplicationController

  def create
    @participants = Participant.new
    @participants.user_id = current_user.id
    @participants.event_id = params[:event]
    if @participants.save
      Event.find(params[:event]).count += 1
      redirect_to user_path(current_user.id)
    else
      redirect_to user_path(current_user.id)
    end
  end

  def destroy
    user = current_user.id
    event = params[:event]
    @participant = Participant.find_by(user_id: user, event_id: event)
    @participant.destroy
    Event.find(event).count -= 1
    redirect_to user_path(current_user.id)
  end
end
