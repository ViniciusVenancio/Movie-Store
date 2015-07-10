class Movie < ActiveRecord::Base
  has_many :actors
  validates :name, presence: true, length: { minimum: 5 }

  scope :expensive, -> { where('price > 10') }
end
