class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  validates_associated :bookmarks
  has_many :movies, through: :bookmarks
  validates_associated :movies
  validates :name, presence: true, uniqueness: true
  has_one_attached :photo
end
