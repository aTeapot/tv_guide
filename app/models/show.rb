class Show < ApplicationRecord
  belongs_to :category, optional: true
  has_many :schedule_items, dependent: :destroy
  has_many :schedules, through: :schedule_items
  validates :name, presence: true
end
