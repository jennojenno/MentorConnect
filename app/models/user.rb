class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :latitude, :longitude, :ip, :zipcode
  # attr_accessible :title, :body
  has_and_belongs_to_many :roles
  has_many :courses

  geocoded_by :zipcode
  after_validation :geocode, :if => :zipcode_changed?

  def lat_and_long
    "#{latitude} #{longitude}"
  end

end

