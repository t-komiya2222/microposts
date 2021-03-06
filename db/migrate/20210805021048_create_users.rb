class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, null: false
      t.string :password_digest

      t.timestamps null: false
      
      t.index :email, unique: true 
    end
  end
end
