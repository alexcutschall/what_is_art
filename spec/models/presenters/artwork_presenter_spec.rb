require 'rails_helper'

describe ArtworkPresenter do
  let(:information) {
    {
      id: "4d8b92eb4eb68a1b2c000968",
      title: "Der Kuss (The Kiss)",
      category: "Painting",
      medium: "Oil and gold leaf on canvas",
      date: "1907-1908",
      series: "",
      literature: "",
      collecting_institution: "Österreichische Galerie Belvedere, Vienna",
      image_versions: ["large"],
      _links: {
        thumbnail: {
          href: "https://d32dm0rphc51dk.cloudfront.net/NOpIAwQa-3r51Cg9qXKbfA/medium.jpg"
        },
        image: {
          href: "https://d32dm0rphc51dk.cloudfront.net/NOpIAwQa-3r51Cg9qXKbfA/{image_version}.jpg",
          templated: true
        },
        genes: {
          href: "https://api.artsy.net/api/genes?artwork_id=4d8b92eb4eb68a1b2c000968"
        },
        artists: {
          href: "https://api.artsy.net/api/artists?artwork_id=4d8b92eb4eb68a1b2c000968"
        },
        similar_artworks: {
          href: "https://api.artsy.net/api/artworks?similar_to_artwork_id=4d8b92eb4eb68a1b2c000968"
        }
      }
    }
  }
  let(:artwork){ Artwork.new(information) }
  subject{ ArtworkPresenter.new(artwork, @artwork)}
  it "should provide a new note for a form" do
    expect(subject).to be_an ArtworkPresenter
    expect(subject.id).to eq("4d8b92eb4eb68a1b2c000968")
    expect(subject.image).to eq("https://d32dm0rphc51dk.cloudfront.net/NOpIAwQa-3r51Cg9qXKbfA/medium.jpg")
    expect(subject.title).to eq("Der Kuss (The Kiss)")
    expect(subject.category).to eq("Painting")
    expect(subject.medium).to eq("Oil and gold leaf on canvas")
    expect(subject.date).to eq("1907-1908")
    expect(subject.series).to eq("Unknown")
    expect(subject.literature).to eq("Unknown")
    expect(subject.collecting_institution).to eq("Österreichische Galerie Belvedere, Vienna")
    expect(subject.artist).to eq("/api/artists?artwork_id=4d8b92eb4eb68a1b2c000968")
    expect(subject.similar_artworks).to eq("https://api.artsy.net/api/artworks?similar_to_artwork_id=4d8b92eb4eb68a1b2c000968")
    expect(subject.genes).to eq("https://api.artsy.net/api/genes?artwork_id=4d8b92eb4eb68a1b2c000968")
  end
end
