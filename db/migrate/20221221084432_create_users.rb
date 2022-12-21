class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string "name", null: false
      t.string "email", uinque: true, null: false 
      t.string "mobile", limit: 10, null: false
      t.string "password_digest", null: false 
      t.date "dob"
      t.timestamps
    end
  end
end
