class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  

  # def after_sign_in_path_for(user)
  #  current_user_path
  # end

  def after_sign_in_path_for(user)
    @user = current_user
    if (@user.bio && @user.skills != nil) 
      user_path(@user.id)
    else 
      edit_user_registration_path
    end 
  end
end
