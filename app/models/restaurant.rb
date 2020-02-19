class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian], allow_nil: false }
  validates :name, :address, :category, presence: true
end
