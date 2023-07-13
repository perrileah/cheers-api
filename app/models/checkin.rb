class Checkin < ApplicationRecord
  belongs_to :user
  belongs_to :brewery

  validates :rating, presence: true
  validates :image_url, presence: true
  validates :comments, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 1 }
  validates :rating, numericality: { less_than_or_equal_to: 5 }
  validates :comments, length: { in: 2..20 }
end
