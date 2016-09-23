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

ActiveRecord::Schema.define(version: 20160824181250) do

  create_table "action_step_filters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "action_step_id"
    t.integer  "filter_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "action_steps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",                                           null: false
    t.integer  "level"
    t.boolean  "published",                      default: false
    t.string   "audio_message"
    t.string   "image"
    t.text     "overview",         limit: 65535,                 null: false
    t.text     "health_benefit",   limit: 65535,                 null: false
    t.text     "week_at_a_glance", limit: 65535,                 null: false
    t.text     "science",          limit: 65535,                 null: false
    t.text     "citations",        limit: 65535,                 null: false
    t.integer  "strategy_id"
    t.text     "day_1",            limit: 65535
    t.text     "day_2",            limit: 65535
    t.text     "day_3",            limit: 65535
    t.text     "day_4",            limit: 65535
    t.text     "day_5",            limit: 65535
    t.string   "day_1_video"
    t.string   "day_2_video"
    t.string   "day_3_video"
    t.string   "day_4_video"
    t.string   "day_5_video"
    t.string   "day_1_audio"
    t.string   "day_2_audio"
    t.string   "day_3_audio"
    t.string   "day_4_audio"
    t.string   "day_5_audio"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  create_table "admins", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
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

  create_table "filters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "user_id",        limit: 32,                 null: false
    t.datetime "attempted_at",                              null: false
    t.boolean  "was_successful",            default: false, null: false
  end

  create_table "notifications", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "notification_id", limit: 32
    t.string   "sender_id",       limit: 32
    t.string   "recipient_id",    limit: 32
    t.string   "body"
    t.string   "type_of"
    t.string   "state"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "question_filters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "question_id"
    t.integer  "filter_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "questions", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "question_id", limit: 32,    null: false
    t.string   "subdomain",   limit: 50,    null: false
    t.string   "name"
    t.integer  "sequence"
    t.string   "type_of"
    t.string   "state"
    t.string   "section"
    t.string   "survey"
    t.string   "strategy"
    t.string   "substrategy"
    t.text     "notify_text", limit: 65535
    t.string   "recipients"
    t.boolean  "do_notify"
    t.boolean  "is_required"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "seeds", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "version"
  end

  create_table "sessions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "session_id",               null: false
    t.text     "data",       limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true, using: :btree
    t.index ["updated_at"], name: "index_sessions_on_updated_at", using: :btree
  end

  create_table "strategies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "survey_answers", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "survey_answer_id", limit: 32, null: false
    t.string   "survey_id",        limit: 32, null: false
    t.string   "question_id",      limit: 32, null: false
    t.integer  "sequence"
    t.string   "type_of"
    t.string   "section"
    t.string   "survey"
    t.string   "strategy"
    t.string   "substrategy"
    t.string   "answer"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "survey_options", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "survey_option_id",  limit: 32,                          null: false
    t.string   "name"
    t.string   "mode"
    t.string   "state"
    t.decimal  "diet_low",                     precision: 10, scale: 2
    t.decimal  "diet_high",                    precision: 10, scale: 2
    t.decimal  "movement_low",                 precision: 10, scale: 2
    t.decimal  "movement_high",                precision: 10, scale: 2
    t.decimal  "environment_low",              precision: 10, scale: 2
    t.decimal  "environment_high",             precision: 10, scale: 2
    t.decimal  "rejuvenation_low",             precision: 10, scale: 2
    t.decimal  "rejuvenation_high",            precision: 10, scale: 2
    t.decimal  "spirit_low",                   precision: 10, scale: 2
    t.decimal  "spirit_high",                  precision: 10, scale: 2
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  create_table "surveys", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "survey_option_id",     limit: 32,                          null: false
    t.string   "survey_id",            limit: 32,                          null: false
    t.string   "user_id",              limit: 32,                          null: false
    t.integer  "sequence"
    t.string   "step"
    t.decimal  "diet_score",                      precision: 10, scale: 2
    t.decimal  "movement_score",                  precision: 10, scale: 2
    t.decimal  "environment_score",               precision: 10, scale: 2
    t.decimal  "rejuvenation_score",              precision: 10, scale: 2
    t.decimal  "spirit_score",                    precision: 10, scale: 2
    t.string   "diet_percent"
    t.string   "movement_percent"
    t.string   "environment_percent"
    t.string   "rejuvenation_percent"
    t.string   "spirit_percent"
    t.integer  "diet_level"
    t.integer  "movement_level"
    t.integer  "environment_level"
    t.integer  "rejuvenation_level"
    t.integer  "spirit_level"
    t.date     "completed_on"
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
  end

  create_table "tenants", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
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

  create_table "user_action_steps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "user_id"
    t.integer  "action_step_id"
    t.string   "state",              limit: 20, default: "available", null: false
    t.datetime "completed_on"
    t.datetime "active_at"
    t.integer  "current_day",                   default: 1,           null: false
    t.integer  "plan_slot",                     default: 0,           null: false
    t.datetime "started_at"
    t.datetime "day_1_completed_at"
    t.datetime "day_2_completed_at"
    t.datetime "day_3_completed_at"
    t.datetime "day_4_completed_at"
    t.datetime "day_5_completed_at"
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
  end

  create_table "user_filters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "user_id"
    t.integer  "filter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
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
    t.string   "cancer_type"
    t.string   "city",                   limit: 50
    t.string   "country",                limit: 3
    t.string   "mobile_number",          limit: 20
    t.string   "home_number",            limit: 20
    t.string   "time_zone",              limit: 100
    t.boolean  "is_admin",                           default: false, null: false
    t.boolean  "accepted_terms",                     default: false, null: false
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.boolean  "is_throttled",                       default: true
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email", "subdomain"], name: "index_users_on_email_and_subdomain", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  end

end
