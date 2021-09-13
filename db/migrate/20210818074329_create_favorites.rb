class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.text :content

      t.timestamps
      t.index [:user_id, :created_at]
    end
  end
end
