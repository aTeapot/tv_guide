class Channel < ApplicationRecord
  has_one :schedule, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
