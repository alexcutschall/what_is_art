class QuizArtwork < ApplicationRecord
  validates_presence_of :image, :title
  belongs_to :quiz_artist
end
