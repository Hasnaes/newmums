class Activity < ApplicationRecord

  has_one :chatroom
  has_many_attached :photos

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
end
