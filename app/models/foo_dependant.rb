class FooDependant < ApplicationRecord
  belongs_to :foo

  validates :category, presence: true
  validates :value, presence: true, numericality: { greater_than_or_equal_to: 0.01 }
  validates :foo, uniqueness: { scope: :category,
                                message: "can't exist more than once with same category" }
end
