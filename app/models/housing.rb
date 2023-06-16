class Housing < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :books
  has_one_attached :photo



  def averagee_rating
    self.reviews.average(:rating).to_f.truncate(1)
  end
end
