class CreateLogins < ActiveRecord::Migration
  def change
   create_table :logins do |t|
     t.string :user_id, limit: 32, null: false
     t.datetime :attempted_at, null: false
     t.boolean :was_successful, null: false, default: false
    end
  end
end
