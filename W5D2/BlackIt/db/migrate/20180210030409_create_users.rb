class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, string: true, null: false
      t.string :email, string: true, null: false
      t.string :password_digest, string: true, null: false
      t.string :session_token, string: true, null: false

      t.timestamps
    end
    add_index :users, :name
  end
end
