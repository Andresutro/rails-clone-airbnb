class Review < ApplicationRecord
  belongs_to :housing
  belongs_to :user

  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :content, presence: true
  validates :user_id, presence: true
  validates :housing_id, presence: true
  validates :comment, length: { maximum: 400 }
end
