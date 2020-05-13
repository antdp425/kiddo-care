class Child < ActiveRecord::Base 
   belongs_to :user
   validates :first_name, :last_name, :contact_phone, :contact_email, presence: true
   validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/,
   message: "only allows letters" }
   validates :contact_phone, length: {is: 10}, numericality: { only_integer: true, message: "only allows numbers"}
end