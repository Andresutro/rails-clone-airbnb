class Book < ApplicationRecord
  belongs_to :user
  belongs_to :housing
  #validates :start_date, presence: true
  #validates :end_date, presence: true
  #validates :num_guests, presence: true, numericality: { greater_than: 0 }
  #validates :status, presence: true, inclusion: { in: ['confirmed', 'pending', 'cancelled'] }

  # enum status: ['pending', :accepted, :rejected]
  validate :overlaps_beetwen
  # validates :state, inclusion: { in: ['pendig', 'accepted', 'rejected'] }
  validates_presence_of :housing, presence: true

  def num_guests
    guests
  end
  def check_in

  end

  def overlaps_beetwen
    if Book.exists?(housing_id: housing_id) && Book.where(housing_id: housing_id).where("(start_date, end_date) OVERLAPS (?, ?)", start_date, end_date).exists?
      errors.add(:base, "Ya existe una reserva para esta casa en el rango de fechas especificado")
    end
  end


  # def status
  #   if start_date.present?
  #     "Confirmed"
  #   else
  #     "Pending"
  #   end

  # end
end
