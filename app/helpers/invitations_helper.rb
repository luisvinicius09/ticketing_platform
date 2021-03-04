module InvitationsHelper
  def invitation(var)
    if var
      render 'invitations/invitation', event: @event
    else
      render inline: '<h3>To attend this event you need to log in!</h3>'.html_safe
    end
  end
end
