class Offer < ApplicationRecord
  belongs_to :intervention
    # Ajoutez d'autres associations si nécessaire

  # Ajoutez des validations si nécessaire
  validates :price, presence: true
  validates :estimated_time, presence: true
  # Autres validations...
end
