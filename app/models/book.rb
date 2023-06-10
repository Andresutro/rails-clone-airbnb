class Book < ApplicationRecord
  belongs_to :user
  belongs_to :housing

  validates :state, inclusion: { in: ['pendig', 'accepted', 'rejected'] }
end
