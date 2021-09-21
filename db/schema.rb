# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_20_155809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expectations", force: :cascade do |t|
    t.bigint "profile_id"
    t.text "mentoring_skills", default: [], array: true
    t.text "availability"
    t.text "expertise"
    t.text "technologies", default: [], array: true
    t.text "secteur"
    t.text "job_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_expectations_on_profile_id", unique: true
  end

  create_table "mentorship_capacities", force: :cascade do |t|
    t.bigint "profile_id"
    t.text "mentoring_skills", default: [], array: true
    t.text "availability"
    t.integer "mentee_capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_mentorship_capacities_on_profile_id", unique: true
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id"
    t.boolean "is_mentor"
    t.boolean "is_mentee"
    t.text "name"
    t.text "github_url"
    t.text "linkedin_url"
    t.integer "seniority"
    t.text "expertise"
    t.text "technologies", default: [], array: true
    t.text "industry"
    t.text "job_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_profiles_on_user_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

end
