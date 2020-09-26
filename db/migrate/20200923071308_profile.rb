class Profile < ActiveRecord::Migration[5.2]
  def change
    drop_table :profile_image_ids
  end
end
