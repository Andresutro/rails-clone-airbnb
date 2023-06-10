class Review < ApplicationRecord
  belongs_to :housing
  belongs_to :user
end
