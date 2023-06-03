class Booking < ApplicationRecord
belongs_to :user
belongs_to :housting
# Validaciones
validates :start_date, :end_date, :price, :m2, presence: true
end
