class CreatePrizes < ActiveRecord::Migration[6.0]
  def change
    create_table :prizes do |t|
      t.string :image_url
      t.float :value
      t.string :name
      t.boolean :status, null: false, default: false
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
