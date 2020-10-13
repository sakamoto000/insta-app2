class Profile < ApplicationRecord
  enum gender: { male: 0, female: 1, other: 2 }
  belongs_to :user
  has_one_attached :user_image
end
