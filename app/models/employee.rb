class Employee < ActiveRecord::Base 
   belongs_to :user
   validates :first_name, :last_name, :phone, :email, presence: true
   validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/,
   message: "only allows letters" }
   validates :phone, length: {is: 10}, numericality: { only_integer: true , message: "only allows numbers" }
end