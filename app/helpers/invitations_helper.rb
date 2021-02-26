module InvitationsHelper
  def invitation(var)
    if var
      render 'invitations/invitation', event: @event
    else
      render inline: '<h3>To attend this event you need to log in!</h3>'.html_safe
    end
  end

  def show_member(var)
    if var
      render inline: '<h3>No members in this event!</h3>'.html_safe
    else
      @event.attendees.each do |attendee|
        render inline: '<p>' + attendee.name + '</p>'.html_safe
      end
    end
  end
end
