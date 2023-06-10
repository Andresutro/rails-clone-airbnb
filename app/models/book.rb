class Book < ApplicationRecord
  belongs_to :user
  belongs_to :housing

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :num_guests, presence: true, numericality: { greater_than: 0 }
  validates :status, presence: true, inclusion: { in: ['confirmed', 'pending', 'cancelled'] }
  validates :state, inclusion: { in: ['pendig', 'accepted', 'rejected'] }
end
