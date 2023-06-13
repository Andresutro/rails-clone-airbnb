class Book < ApplicationRecord
  belongs_to :user
  belongs_to :housing
  attribute :state, :string
  #validates :start_date, presence: true
  #validates :end_date, presence: true
  #validates :num_guests, presence: true, numericality: { greater_than: 0 }
  #validates :status, presence: true, inclusion: { in: ['confirmed', 'pending', 'cancelled'] }
  #validates :state, inclusion: { in: ['pendig', 'accepted', 'rejected'] }
  validates_presence_of :housing, presence: true

  def num_guests
    guests
  end
  def check_in

  end
  
  def check_out

  end
  def status
    if start_date.present?
      "Confirmed"
    else
      "Pending"
    end
  end


end
