class CreateNotifications < ActiveRecord::Migration
  create_table :notifications, id: false  do |t|    #alert    broadcast
    t.string :notification_id,       limit: 32
    t.string :sender_id,            limit: 32
    t.string :recipient_id,         limit: 32
    t.string :body
    t.string :type_of
    t.string :state

    t.timestamps null: false
  end
end
