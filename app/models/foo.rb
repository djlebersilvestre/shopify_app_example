class Foo < ApplicationRecord
  has_many :foo_dependants

  validates :name, presence: true, uniqueness: true
end
