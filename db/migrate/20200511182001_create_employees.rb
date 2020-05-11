class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.boolean :background_check
      t.boolean :cpr_certified
      t.integer :user_id
    end
  end
end
