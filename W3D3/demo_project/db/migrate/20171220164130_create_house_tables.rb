class CreateHouseTables < ActiveRecord::Migration[5.1]
  def change
    create_table :house_tables do |t|
      t.timestamps
      t.integer :residents, null: false 
      t.string :house
    end
  end
end
