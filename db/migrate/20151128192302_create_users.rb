class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :firstname, required: true
      t.text :lastname, required: true
      t.text :username, required: true, null: false
      t.integer :role, null: false, default: 1 #defaults to 'normal' role (list user)
      t.text :email, required: true, unique: true
      t.bigint :phonenumber
      t.string :password_digest
      t.string :token
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.integer :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.boolean :active, default: true
      t.boolean :main_store_contact, default: false
      t.boolean :main_business_contact, default: false
      t.boolean :confirmed, default: false
      t.timestamps null: false
    end
  end
end
