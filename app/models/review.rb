class Review < ApplicationRecord
  belongs_to :user
  belongs_to :shop

  validates :rating, presence: true
end
