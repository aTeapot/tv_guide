class Schedule < ApplicationRecord
  belongs_to :channel
  validates :channel_id, presence: true, uniqueness: true
end
