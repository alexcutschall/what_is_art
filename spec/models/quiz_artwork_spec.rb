require 'rails_helper'

describe QuizArtwork do
  describe 'it has attributes' do
    it { should validate_presence_of(:image) }
    it { should validate_presence_of(:title) }
  end
end
