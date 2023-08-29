class Participation < ApplicationRecord
  belongs_to :activity_id
  belongs_to :user_id
end
