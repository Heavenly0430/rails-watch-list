class Bookmark < ApplicationRecord
  has_many :movies, dependent: :destroy
  has_many :lists, dependent: :destroy
end
