class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  def all
    user = User.from_omniauth(request.env["omniauth.auth"])
    if user.persisted?
      sign_in_and_redirect user, event: :authentication
      set_flash_message(:notice, :success, :kind => 'Facebook') if is_navigational_format?
    else
      session['devise.user_attributes'] = user.attributes
      redirect_to new_user_registration_url
    end
  end

  alias_method :facebook, :all
end
