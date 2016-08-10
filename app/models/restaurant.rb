class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = %w(Chinese Italian Japanese French Belgian).freeze

  validates :phone_number,uniqueness:true, presence: { message: "already exist, are you sure  ?" }
  validates :category, presence: { message: " : You need to choose a category !" }
  validates :name, uniqueness: true, presence:  { message: " : It's empty , please fill in the field" }
  validates :address, presence: { message: " : It's empty , please fill in the field" }
end
