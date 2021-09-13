class AddAvatarToMicroposts < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :avatar, :string
  end
end
