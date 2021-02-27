module EventsHelper
  def new_event(var)
    render inline: '<%= link_to "New Event", new_event_path, class: "new-event" %>' if var
  end

  def show_member(var)
    if var
      render inline: '<h3>No members in this event!</h3>'.html_safe
    else
      @event.attendees.map { |item| tag.p(item.name) }.join.html_safe
    end
  end
end
