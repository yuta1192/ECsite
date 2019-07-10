class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    drop_table :users
  end
  def down
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :tel
      t.string :password_digest
      t.boolean defalt: false
      t.timestamps
    end
  end
end
