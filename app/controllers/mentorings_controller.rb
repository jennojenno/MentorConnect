class MentoringsController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index]
  
  def index
    @courses = Course.all
  end

  def create
    @course = Course.new(params[:course])
    @user = User.find(params[:user_id])
    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'course was successfully created.' }
        format.json { render json: @course, status: :created, location: @course }
      else
        format.html { render action: "new" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @course = Course.new
    @user = User.find(params[:user_id])
  end

  def edit
    @course = Course.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def show
    @course = Course.find(params[:id])
    @user = User.find(params[:id])

  end

  def update
    @course = Course.find(params[:id])
    @user = User.find(params[:user_id])
    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to @course, notice: 'course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end
end
