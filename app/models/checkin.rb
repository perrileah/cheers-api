class Checkin < ApplicationRecord
  belongs_to :user
  validates :brewery_id, presence: true
  validates :user_id, presence: true
  validates :rating, presence: true
  validates :image_url, presence: true
  validates :comments, presence: true
end
