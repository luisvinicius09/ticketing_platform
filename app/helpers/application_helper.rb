module ApplicationHelper
  def flash_notice
    render inline: '<div class="notification"><p class="notice"><%= notice %></p></div>'.html_safe if flash[:notice]
  end
  def flash_alert
    render inline: '<div class="notification"><p class="alert"><%= alert %></p></div>'.html_safe if flash[:alert]
  end
end
