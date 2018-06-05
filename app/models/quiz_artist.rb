class QuizArtist < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :quiz_artworks
end
