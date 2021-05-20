class User < ApplicationRecord
  # has_many :comments
  
  has_secure_password
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, :email, :password , presence: true
  validates :email, uniqueness: {case_sensitive: false}, format: { with: VALID_EMAIL_REGEX } 
  validates :password, length: { minimum: 6, maximum: 20}

end
