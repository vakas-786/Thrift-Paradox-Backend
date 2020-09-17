class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.integer :income
      t.integer :expense
      t.integer :balance
      t.integer :investments
      t.integer :saving
      t.integer :totalSavings
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
