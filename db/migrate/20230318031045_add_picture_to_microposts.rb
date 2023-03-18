class AddPictureToMicroposts < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :picture, :string, after: :user_id
  end
end
