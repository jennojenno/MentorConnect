class AuthenticationsController < ApplicationController
  # GET /authentications
  # GET /authentications.json
  def index
    @authentications = Authentication.all
  end

  def create
   #render :text => request.env["omniauth.auth"].to_yaml
   user = User.from_omniauth(env["omniauth.auth"])
   session[:user_id] = user.id 
   redirect_to user_path
  end
  # DELETE /authentications/1
  # DELETE /authentications/1.json
  def destroy
    @authentication = Authentication.find(params[:id])
    @authentication.destroy
    flash[:notice] = "Destroyed auth"
    redirect_to authentications_url
  end
end
