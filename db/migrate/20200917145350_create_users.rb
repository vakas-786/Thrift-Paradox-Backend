class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :avatar
      t.string :password_digest
      t.string :firstname
      t.string :lastname
      t.integer :token

      t.timestamps
    end
  end
end
