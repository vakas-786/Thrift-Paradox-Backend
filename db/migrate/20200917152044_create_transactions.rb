class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :item
      t.string :type_trans
      t.string :category
      t.float :amount
      t.date :date
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
