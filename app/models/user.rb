class User < ActiveRecord::Base 
   has_secure_password
   has_many :children
   validates :email, :username, :password, presence: true
   validates :username, uniqueness: { case_sensitive: false }
end