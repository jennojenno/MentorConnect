class HomeController < ApplicationController
  def index
    @url = home_map_path
  end 

  def map 
    #render :layout => false
    @learners = User.where(:is_mentor => false)
    #@mentors = User.where(:is_student => nil || false )

    #User.find(2).courses != nil

    User.all.each do |x|
      if x.courses != nil
        x.is_mentor = true
        binding.pry
        x.save!
      end 
    end 

    @mentors = User.where(:is_mentor => true )


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
  

end
