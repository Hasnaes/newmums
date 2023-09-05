class Participation < ApplicationRecord
  belongs_to :activity
  belongs_to :user
  validate :participation_date_within_dates


  private

  def participation_date_within_dates
    errors.add(:participation_date, "Must be between start and end date") unless (activity.start_date...activity.end_date).include?(participation_date)
  end


end
