class Employee < ActiveRecord::Base 
   belongs_to :user
   validates :first_name, :last_name, :phone, :email, presence: true
   validates :phone, length: {is: 10}, numericality: true
end