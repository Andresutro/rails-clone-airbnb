class Housing < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :books


  validates :name, presence: true
  validates :user_id, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :amount_bathrooms, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :amount_rooms, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :msquare, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :city, presence: true
  validates :state, presence: true
  validates :address, presence: true
  #validates :description, presence: true
  include PgSearch::Model
  pg_search_scope :search_result,
    against: [:city],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  def averagee_rating
    self.reviews.average(:rating).to_f.truncate(1)
  end
end
