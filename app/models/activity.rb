class Activity < ApplicationRecord
  has_one :chatroom
  has_many_attached :photos
  has_many :reviews, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :participations

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 40 }
  validates :capacity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  # validates :price, presence: true, numericality: { greater_than: 0 }
  # validates :location, presence: true
  # validates :photo, presence: true
  validates :category, presence: true

  def average_rating
    total = 0
    self.reviews.each do |review|
      total += review.rating.to_i
    end
    total / self.reviews.count
  rescue ZeroDivisionError
    0.0
  end
end
