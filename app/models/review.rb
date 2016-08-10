class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: {message: "please fill the form"}
  validates :stars, numericality: { only_integer: true }, inclusion: { in: [0,1,2,3,4,5], allow_nil: false, message: 'doivent être comprise entre 1 et 3' }
end
