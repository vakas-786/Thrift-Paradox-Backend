class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.float :income
      t.float :expense
      t.float :balance
      t.float :investments
      t.float :saving
      t.float :totalSavings
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
