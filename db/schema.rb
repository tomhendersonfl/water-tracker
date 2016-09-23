# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160819203600) do

  create_table "admins", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "admin_id",               limit: 32,              null: false
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",                   default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "first_name",             limit: 50,              null: false
    t.string   "last_name",              limit: 50,              null: false
    t.string   "city",                   limit: 50
    t.string   "country",                limit: 3
    t.string   "mobile_number",          limit: 20
    t.string   "home_number",            limit: 20
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.index ["confirmation_token"], name: "index_admins_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_admins_on_unlock_token", unique: true, using: :btree
  end

  create_table "logins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "user_id",        limit: 32,                 null: false
    t.datetime "attempted_at",                              null: false
    t.boolean  "was_successful",            default: false, null: false
  end

  create_table "notifications", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "notification_id", limit: 32
    t.string   "sender_id",       limit: 32
    t.string   "recipient_id",    limit: 32
    t.string   "body"
    t.string   "type_of"
    t.string   "state"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "sessions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "session_id",               null: false
    t.text     "data",       limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true, using: :btree
    t.index ["updated_at"], name: "index_sessions_on_updated_at", using: :btree
  end

  create_table "tenants", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "subdomain",            limit: 50,                   null: false
    t.string   "tenant_name",          limit: 100,                  null: false
    t.string   "custom_domain",        limit: 100
    t.boolean  "is_active",                          default: true, null: false
    t.string   "favicon"
    t.text     "desktop",              limit: 65535
    t.text     "login",                limit: 65535
    t.text     "logo",                 limit: 65535
    t.text     "privacy_policy",       limit: 65535
    t.text     "terms_and_conditions", limit: 65535
    t.string   "footer_text"
    t.string   "support_number"
    t.string   "support_link"
    t.string   "support_email"
    t.string   "access_token",         limit: 20
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.index ["subdomain"], name: "index_tenants_on_subdomain", unique: true, using: :btree
  end

  create_table "users", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "user_id",                limit: 32,                  null: false
    t.string   "subdomain",              limit: 50,                  null: false
    t.string   "email",                              default: "",    null: false
    t.string   "encrypted_password",                 default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",                    default: 0,     null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "first_name",             limit: 50,                  null: false
    t.string   "last_name",              limit: 50,                  null: false
    t.string   "gender",                 limit: 10
    t.string   "time_since_diagnosis"
    t.string   "age_range"
    t.date     "birthdate"
    t.string   "city",                   limit: 50
    t.string   "country",                limit: 3
    t.string   "mobile_number",          limit: 20
    t.string   "home_number",            limit: 20
    t.string   "time_zone",              limit: 100
    t.boolean  "is_admin",                           default: false, null: false
    t.boolean  "accepted_terms",                     default: false, null: false
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email", "subdomain"], name: "index_users_on_email_and_subdomain", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  end

end
