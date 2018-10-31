class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, :inclusion=> { :in => ['chinese', 'italian', 'japanese', 'french', 'belgian'] }

  def average
    total = []
    reviews.each do |review|
      total << review.rating
    end
    average = total.sum / (total.size + 0.1)
    average.round(0)
  end

end
