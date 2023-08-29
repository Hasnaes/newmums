class Activity < ApplicationRecord
  has_one_attached :photo

  belongs_to :user_id
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
