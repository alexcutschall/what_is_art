class QuizController < ApplicationController
  def show
    @artwork = QuizArtwork.all.sample
    @artist = @artwork.quiz_artist
    @random_artist = QuizArtist.all.sample
  end
end
