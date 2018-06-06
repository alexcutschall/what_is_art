require 'rails_helper'

describe 'as a user' do
  feature 'when they visit the quiz of the day' do
    it 'allows them to play trivia for an artwork' do
      user = User.create(username: "Alex", password: "12345")
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      quiz_artist = QuizArtist.create(name: "Alex Cutschall")
      quiz_artist2 = QuizArtist.create(name: "Vincent Van Gogh")
      quiz_artwork_1 = QuizArtwork.create(image: "https://d32dm0rphc51dk.cloudfront.net/yOrE2ZhXUOAwaAbSXeTtwg/large.jpg", title: "Venus", quiz_artist: quiz_artist)
      quiz_artwork_2 = QuizArtwork.create(image: "https://d32dm0rphc51dk.cloudfront.net/yOrE2ZhXUOAwaAbSXeTtwg/large.jpg", title: "Mona Lisa", quiz_artist: quiz_artist)

      visit quiz_of_the_day_path

      expect(page).to have_content("Quiz of the Day")
      expect(page).to have_css(".answer", count: 2)
    end
  end
end
