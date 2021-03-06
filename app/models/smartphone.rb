class Smartphone < ApplicationRecord
  validates :brand, presence: true
  validates :model, presence: true
  validates :battery, allow_blank: true, numericality: { only_integer: true }

  # initiates a class method and returns a list of records of samsung phones
  # -> short for single line lambda
  scope :samsung, -> { where(brand: 'Samsung')}

  def full_name
    "#{brand}" ' ' "#{model}"
  end
end
