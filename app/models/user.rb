class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :annoucements
  devise :database_authenticatable,
  :jwt_authenticatable,
  :registerable,
  jwt_revocation_strategy: JwtDenylist

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :password, :length => {:within => 6..40}

  
end
