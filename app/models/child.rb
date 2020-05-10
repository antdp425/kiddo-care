class Child < ActiveRecord::Base 
   belongs_to :user
   validates :first_name, :last_name, :contact_phone, :contact_email, presence: true
   validates :contact_phone, length: {maximum: 10}, numericality: true
end