module ApplicationHelper
  def flash_notice
    render inline: '<div class="notification"><p class="notice"><%= notice %></p></div>'.html_safe if flash[:notice]
  end

  def flash_alert
    render inline: '<div class="notification"><p class="alert"><%= alert %></p></div>'.html_safe if flash[:alert]
  end

  def nav_bar(var)
    if var
      render inline: '
      <div class="button">
        <%= link_to "Profile", edit_user_registration_path %>
      </div>
      <div class="button">
        <%= link_to "Logout", destroy_user_session_path, method: :delete %>
      </div>'.html_safe
    else
      render inline: '
      <div class="button">
        <%= link_to "Sign Up", new_user_registration_path %>
      </div>
      <div class="button">
        <%= link_to "Sign In", new_user_session_path %>
      </div>'.html_safe
    end
  end
end
