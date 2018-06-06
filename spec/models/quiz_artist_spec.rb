require 'rails_helper'

describe QuizArtist do
  describe 'it has attributes' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end
