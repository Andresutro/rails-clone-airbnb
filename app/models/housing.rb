class Housing < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy



  def averagee_rating
    self.reviews.average(:rating).to_f.truncate(1)
  end
end
