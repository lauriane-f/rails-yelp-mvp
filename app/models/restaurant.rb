class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, presence: true, inclusion: { in: CATEGORY }
end
