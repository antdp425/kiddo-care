class Children < ActiveRecord::Base 
   belongs_to :user
   validates :first_name, :last_name, :contact_phone, :contact_email, presence: true
end