class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
  	if current_user.user_type == "business"
      redirect_to new_business_path
    else
  	redirect_to root
  end
end