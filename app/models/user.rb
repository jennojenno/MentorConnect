class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:google_oauth2]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :name, :bio, :skills, :password, :provider, :uid, :password_confirmation, :remember_me, :latitude, :longitude, :ip, :zipcode
  # attr_accessible :title, :body
  
  has_and_belongs_to_many :roles
  has_many :courses
  has_many :authentications
  has_many :favorites
  has_many :messages_sent, class_name: "Message", foreign_key: "sender_id"
  has_many :messages_recieved, class_name: "Message", foreign_key: "recipient_id"
 
  geocoded_by :zipcode
  after_validation :geocode, :if => :zipcode_changed?

  def lat_and_long
    "#{latitude} #{longitude}"
  end

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider 
      user.uid = auth.uid 
      user.name = auth.info.name 
      user.email = auth.info.email
      user.save! 
    end 
  end 

  def password_required? 
    if !uid.blank?
      false
    else
      super
    end 
  end 

  def update_with_password(params, *options)
    if encrypted_password.blank?
      update_attributes(params, *options)
    else 
      super 
    end 
  end 

end

