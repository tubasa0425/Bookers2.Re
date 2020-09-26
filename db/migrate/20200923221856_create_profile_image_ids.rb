class CreateProfileImageIds < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_image_ids do |t|
      t.text :shop_name
      t.string :image_id
      t.text :caption
      t.integer :user_id

      t.timestamps
    end
  end
end
