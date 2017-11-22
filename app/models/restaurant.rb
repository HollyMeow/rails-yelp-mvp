class Restaurant < ApplicationRecord


  CATEGORIES = %w(chinese italian japanese french belgian)

  # a restaurant has many reviews
  # When restaurant destroy all its reviews be destroy too
  has_many :reviews, dependent: :destroy
  validates_associated :reviews

  # A restaurant must have at least a name and an address
  validates :name && :address, presence: true

  # the category should be a fixed list
  validates :category, inclusion: { in: CATEGORIES }



end
