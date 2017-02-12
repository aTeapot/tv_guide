class ScheduleItem < ApplicationRecord
  belongs_to :show
  belongs_to :schedule
  validates :air, presence: true
end
