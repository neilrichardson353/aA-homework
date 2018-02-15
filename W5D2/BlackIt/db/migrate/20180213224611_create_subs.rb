class CreateSubs < ActiveRecord::Migration[5.1]
  def change
    create_table :subs do |t|
      t.string :title, null: false
      t.text :description
      t.string :moderator, null: false

      t.timestamps
    end
    add_index :subs, :moderator
  end
end
