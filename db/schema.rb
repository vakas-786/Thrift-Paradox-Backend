ActiveRecord::Schema.define(version: 2020_09_17_152159) do

  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.integer "income"
    t.integer "expense"
    t.integer "balance"
    t.integer "investments"
    t.integer "saving"
    t.integer "totalSavings"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "exchange_rates", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prizes", force: :cascade do |t|
    t.string "image_url"
    t.integer "value"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_prizes_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.string "item"
    t.string "type"
    t.integer "amount"
    t.string "date"
    t.bigint "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_transactions_on_account_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "avatar"
    t.string "firstname"
    t.string "lastname"
    t.integer "token"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "accounts", "users"
  add_foreign_key "prizes", "users"
  add_foreign_key "transactions", "accounts"
end
