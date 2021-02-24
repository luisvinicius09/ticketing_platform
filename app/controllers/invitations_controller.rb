class InvitationsController < ApplicationController
  def create
    event_id = params[:event_id]
    @attendee = Invitation.find_or_initialize_by(attendee_id: current_user.id, attended_event_id: event_id)
    if @attendee.save
      flash[:notice] = 'Now you attended to this event.'
      redirect_to root_path
    else
      flash[:alert] = 'Something wrong happened'
      redirect_to root_path
    end
  end
end
