class ProfileImageId < ApplicationRecord
  
  belongs_to :user
  attachment :image
  
end
