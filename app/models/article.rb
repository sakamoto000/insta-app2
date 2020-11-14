class Article < ApplicationRecord

  has_many :likes, dependent: :destroy

  belongs_to :user
  
  def auther_name
    user.display_name
  end
  def like_count
    likes.count
  end
end
