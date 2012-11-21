class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
  	if current_user.user_type == "business"
      new_business_path
    else
      dashboard_path
    end
  end
end