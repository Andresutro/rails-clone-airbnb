class Book < ApplicationRecord
  belongs_to :user
  belongs_to :housing
  attribute :state, :string
  validates :user_id, presence: true
  validates :housing_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :guests, presence: true, numericality: { greater_than: 0 }
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
