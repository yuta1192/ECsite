class CreateProducts < ActiveRecord::Migration[5.2]
  def up
    drop_table :products
  end
  def down
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.timestamps
    end
  end
end
