class RegistrationsController < Devise::RegistrationsController

  def edit
    @all_events = Event.where(user_id: current_user)
    @prev_events = current_user.events.prev_events
    @next_events = current_user.events.next_events
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
  def update_account_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end
end