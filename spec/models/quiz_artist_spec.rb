require 'rails_helper'

describe QuizArtist do
  describe 'it has attributes' do
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
    it { should validate_presence_of(:password) }
    it { should have_attached_file(:profile_pic) }
  end
end
