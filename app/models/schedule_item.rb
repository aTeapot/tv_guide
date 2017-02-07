class ScheduleItem < ApplicationRecord
  belongs_to :show
  belongs_to :schedule
  validates :schedule_id, presence: true
  validates :show_id, presence: true
  validates :air, presence: true
end
