class HomeController < ApplicationController
  def index
    @url = home_map_path
  end 

  def map 
    #render :layout => false
    @learners = User.where(:is_student => true)
    @mentors = User.where(:is_mentor => true)


  end 
  def mentors 
    @courses = Course.all
    @diy = Course.where(:category => "DIY")
    @music = Course.where(:category => "Music")
  end 

  def learners
    @learners = User.where(:is_student => true)
  end 

  def music
    @music = Course.where(:category => "Music")
  end 

  def diy
    @diy = Course.where(:category => "DIY")
  end 

  def art
    @art = Course.where(:category => "Art")
  end 

  def food
    @food = Course.where(:category => "Food")
  end 
  

end
