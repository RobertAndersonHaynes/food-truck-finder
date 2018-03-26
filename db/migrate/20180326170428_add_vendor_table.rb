class AddVendorTable < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer  :phone_number, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :food_truck_name, null: false
      t.string :url, null: false
      t.string :location, null: false
      t.string :profile_pic
      t.text :description, null: false


      t.timestamps null: false
    end
  end
end
