require 'rails_helper'

describe 'as a user' do
  context 'when they visit their profile page' do
    it 'they see their information' do
      user = User.create(username: "Alex", password: "12345")
      favorite_1 = user.favorites.create(artwork_id: 4, artwork_title: "Der Kuss (The Kiss)",
      artwork_category: "Painting", artwork_medium: "Oil and gold leaf on canvas",
      artwork_date: nil, artwork_series: "",
      artwork_literature: "Unknown",
      artwork_collecting_institution: "Österreichische Galerie Belvedere, Vienna")

      favorite_2 = user.favorites.create(artwork_id: 4, artwork_title: "Der Kuss (The Kiss)",
      artwork_category: "Painting", artwork_medium: "Oil and gold leaf on canvas",
      artwork_date: nil, artwork_series: "",
      artwork_literature: "Unknown",
      artwork_collecting_institution: "Österreichische Galerie Belvedere, Vienna")

      favorite_3 = user.favorites.create(artwork_id: 4, artwork_title: "Der Kuss (The Kiss)",
      artwork_category: "Painting", artwork_medium: "Oil and gold leaf on canvas",
      artwork_date: nil, artwork_series: "",
      artwork_literature: "Unknown",
      artwork_collecting_institution: "Österreichische Galerie Belvedere, Vienna")

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      visit user_favorite_path(user.id)

      expect(page).to have_css(".favorite", count: 3)
      expect(page).to have_content("Favorites")
    end
  end
end
