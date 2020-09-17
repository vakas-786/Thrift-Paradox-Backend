class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :item
      t.string :type
      t.integer :amount
      t.string :date
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
