class MessagesController < ApplicationController
  def new 
    @message = Message.new
    @instructor = User.find(params[:instructor_id])
  end 

  def index
    @sent = Message.where(:sender_id => current_user.id)
    @sentdesc = @sent.order('created_at DESC').all
    #look up a.recipient_id in users table, get their name 
    # @senttouser = User.find(@rcvd.id)

    @rcvd = Message.where(:recipient_id => current_user.id)
    @rcvddesc = @rcvd.order('created_at DESC').all

  end 

  def create
    @message = Message.new(params[:message])
    if @message.save 
      redirect_to root_path, notice: 'Message has been sent.' 
    else 
      redirect_to user_messages_path(current_user), notice: 'Message sending failed. Try again in a few minutes.' 
    end 
  end 

  def show 
    @message = Message.find(params[:id])
  end 

end
