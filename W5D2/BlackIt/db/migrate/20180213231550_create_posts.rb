class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url, null: false
      t.text :content
      t.string :sub, null: false
      t.string :author, null: false

      t.timestamps
    end
    add_index :posts, :sub
    add_index :posts, :author
  end
end
