class HomeController < ApplicationController
  def index
    @url = home_map_path
  end 

  def map 
    #render :layout => false
  end 

  def mentors 
    @courses = Course.all
  end 

  

end
