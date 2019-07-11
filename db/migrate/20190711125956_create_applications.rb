class CreateApplications < ActiveRecord::Migration[5.2]
  def up
    drop_table :applications
  end
  def down
    create_table :applications do |t|
      t.belongs_to :product, index: true
      t.string :name
      t.text :description
      t.integer :price
      t.timestamps
    end
  end
end
