class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string    :first_name
      t.string    :last_name
      t.string    :contact_phone
      t.string    :contact_email
      t.text      :notes
      t.integer   :user_id
    end
  end
end
