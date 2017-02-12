class Schedule < ApplicationRecord
  belongs_to :channel
  has_many :schedule_items, dependent: :destroy
  has_many :shows, through: :schedule_items
  validates :channel_id, uniqueness: true
end
