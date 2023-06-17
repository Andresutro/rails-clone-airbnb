class Housing < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :books
  has_one_attached :image



  def averagee_rating
    self.reviews.average(:rating).to_f.truncate(1)
  end



  def disabled_dates
    self.books.map do |book|
      {
        from: book.start_date.strftime("%Y-%m-%d"),
        to: book.end_date.strftime("%Y-%m-%d")
      }
    end
  end


  def first_available_dates
    disabled_dates = self.disabled_dates.sort_by { |range| range[:from] }
    available_dates = []
    date = Date.today

    while available_dates.size < 5
      if disabled_dates.empty? || date < DateTime.parse(disabled_dates.first[:from])
        available_dates << date
      elsif date > DateTime.parse(disabled_dates.first[:to])
        disabled_dates.shift
        next
      end
      date = date.next_day
    end

    available_dates
    
    { from: available_dates.first.strftime("%Y-%m-%d"), to: available_dates.last.strftime("%Y-%m-%d") }
  end
end
