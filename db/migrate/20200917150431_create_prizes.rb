class CreatePrizes < ActiveRecord::Migration[6.0]
  def change
    create_table :prizes do |t|
      t.string :image_url
      t.float :value
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
