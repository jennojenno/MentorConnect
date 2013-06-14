class UsersController < ApplicationController
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def show
    @user = User.find(params[:id])
    #@course = Course.find_by_user_id(params[:id])
    @courses = Course.where(:user_id => params[:id])
    @favorites = Favorite.where(:user_id => params[:id])
    
    #@courses = Course.all
    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.json { render json: @user }
    # end
  end

  def edit
    @user = User.find(params[:id])
  end
end
