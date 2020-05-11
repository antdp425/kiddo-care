class User < ActiveRecord::Base 
   has_secure_password
   has_many :children
   has_many :employees
   validates :first_name, :last_name, :email, :username, :password, presence: true
   validates :username, uniqueness: { case_sensitive: false }
end