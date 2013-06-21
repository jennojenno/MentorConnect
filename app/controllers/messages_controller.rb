class MessagesController < ApplicationController
  def new 
    @message = Message.new
    @instructor = User.find(params[:instructor_id])
  end 

  def create
    @message = Message.new(params[:message])
    if @message.save 
      redirect_to courses_path, notice: 'Message has been sent.' 
    else 
      redirect_to user_messages_path(current_user), notice: 'Message sending failed. Try again in a few minutes.' 
    end 
  end 

  def show 
    @message = Message.find(params[:id])
  end 

end
