class Category < ApplicationRecord
  has_many :shows, dependent: :nullify
  validates :name, presence: true, uniqueness: true
end
