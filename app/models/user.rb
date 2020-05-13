class User < ActiveRecord::Base 
   has_secure_password
   has_many :children
   has_many :employees
   validates :first_name, :last_name, :email, :username, :password, presence: true
   validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/,
   message: "only allows letters" }
   validates :username, uniqueness: { case_sensitive: false }
   validates :username, format: { with: /[a-zA-Z0-9]/, message: "can only include letters and numbers"}
end