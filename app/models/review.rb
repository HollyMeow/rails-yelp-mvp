class Review < ApplicationRecord

  ETOILES = [0,1,2,3,4,5]

  # A review must have a parent restaurant
  # A review has a reference a restaurant
  belongs_to :restaurant

  # A review must have content and a rating
  validates :commentaire && :note, presence: true

  # The rating should be a number between 0 and 5
  validates :note, inclusion: { in: ETOILES }


end
