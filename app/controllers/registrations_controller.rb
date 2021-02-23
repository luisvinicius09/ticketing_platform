class RegistrationsController < Devise::RegistrationsController

  def edit
    @all_events = Event.where(user_id: current_user)
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
  def update_account_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end
end