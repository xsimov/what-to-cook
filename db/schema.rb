# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_03_102212) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aliments", force: :cascade do |t|
    t.string "name", null: false
    t.integer "food_category_id"
    t.integer "season_start_month"
    t.integer "season_end_month"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_category_id"], name: "index_aliments_on_food_category_id"
    t.index ["season_end_month"], name: "index_aliments_on_season_end_month"
    t.index ["season_start_month"], name: "index_aliments_on_season_start_month"
  end

  create_table "chefs", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "alias", null: false
    t.string "password_digest", null: false
    t.string "recovery_password_digest", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer "quantity", null: false
    t.string "unit", null: false
    t.integer "aliment_id", null: false
    t.integer "recipe_id", null: false
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.integer "number_of_people"
    t.text "instructions", null: false
    t.integer "time_to_cook_in_s", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["number_of_people"], name: "index_recipes_on_number_of_people"
  end

end
