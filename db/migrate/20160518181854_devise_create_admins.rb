class DeviseCreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins, id: false do |t|

      ## Identifier
      t.string :admin_id,            null: false, limit: 32

      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      t.string   :unlock_token # Only if unlock strategy is :email or :both
      t.datetime :locked_at

      ## Custom Attributes
      t.string   :first_name, limit: 50, null: false
      t.string   :last_name, limit: 50, null: false
      #t.boolean  :is_admin, null: false, default: false

      t.string   :city, limit: 50, null: true
      t.string   :country, limit: 3, null: true
      t.string   :mobile_number, limit: 20, null: true
      t.string   :home_number, limit: 20, null: true


      t.timestamps null: false
    end

    add_index :admins, :email,                unique: true
    add_index :admins, :reset_password_token, unique: true
    add_index :admins, :confirmation_token,   unique: true
    add_index :admins, :unlock_token,         unique: true
  end
end
