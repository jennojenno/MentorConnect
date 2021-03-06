class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    user = User.from_omniauth(request.env["omniauth.auth"])
    if user.persisted?
        flash.notice = "Signed in!"
        sign_in_and_redirect
      else
        session["devise.user_attributes"] = user.attributes
        redirect_to new_user_registration_url
      end
  end 
  def google_oauth2_info
    raise request.env["omniauth.auth"].to_yaml
  end
end 