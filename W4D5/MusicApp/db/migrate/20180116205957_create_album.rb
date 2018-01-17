class CreateAlbum < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.integer :record_id, null: false
      t.string :title, null: false
      t.integer :year, null: false
      t.boolean :live
    end
    add_index :albums, :record_id
  end
end
