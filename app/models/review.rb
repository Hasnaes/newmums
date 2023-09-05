class Review < ApplicationRecord
  belongs_to :activity
  belongs_to :user

  validates_uniqueness_of :review_id, scope: :user_id
end
