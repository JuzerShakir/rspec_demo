class Smartphone < ApplicationRecord
  validates :brand, presence: true
  validates :model, presence: true

  scope :samsung, lambda { where(brand: 'Samsung')}

  def full_name
    "#{brand}" ' ' "#{model}"
  end
end
