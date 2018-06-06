require 'rails_helper'

describe ArtistPresenter do
  let(:information) {
    {
      id: "4d8b92b64eb68a1b2c000414",
      name: "Gustav Klimt",
      birthday: "1862",
      deathday: "1918",
      hometown: "Baumgarten, Austria",
      location: "Vienna, Austria",
      nationality: "Austrian",
      image_versions: ["four_thirds",],
      _links: {
        thumbnail: {
          href: "https://d32dm0rphc51dk.cloudfront.net/n3RTu8EOaXrq3UCBXjh1Ag/four_thirds.jpg"
        },
        image: {
          href: "https://d32dm0rphc51dk.cloudfront.net/n3RTu8EOaXrq3UCBXjh1Ag/{image_version}.jpg",
          templated: true
        },
        artworks: {
          href: "https://api.artsy.net/api/artworks?artist_id=4d8b92b64eb68a1b2c000414"
        },
        similar_artists: {
          href: "https://api.artsy.net/api/artists?similar_to_artist_id=4d8b92b64eb68a1b2c000414"
        },
        similar_contemporary_artists: {
          href: "https://api.artsy.net/api/artists?similar_to_artist_id=4d8b92b64eb68a1b2c000414&similarity_type=contemporary"
        },
        genes: {
          href: "https://api.artsy.net/api/genes?artist_id=4d8b92b64eb68a1b2c000414"
        }
      }
    }
  }
  let(:artist){ Artist.new(information) }
  subject{ ArtistPresenter.new(artist, @artist)}
  it "should provide a new note for a form" do
    expect(subject).to be_an ArtistPresenter
    expect(subject.id).to eq("4d8b92b64eb68a1b2c000414")
    expect(subject.image).to eq("https://d32dm0rphc51dk.cloudfront.net/n3RTu8EOaXrq3UCBXjh1Ag/four_thirds.jpg")
    expect(subject.name).to eq("Gustav Klimt")
    expect(subject.birthday).to eq("1862")
    expect(subject.deathday).to eq("1918")
    expect(subject.hometown).to eq("Baumgarten, Austria")
    expect(subject.nationality).to eq("Austrian")
    expect(subject.similar_artists).to eq("https://api.artsy.net/api/artists?similar_to_artist_id=4d8b92b64eb68a1b2c000414")
    expect(subject.similar_contemporary_artists).to eq("https://api.artsy.net/api/artists?similar_to_artist_id=4d8b92b64eb68a1b2c000414&similarity_type=contemporary")
    expect(subject.genes).to eq("https://api.artsy.net/api/genes?artist_id=4d8b92b64eb68a1b2c000414")
  end
  describe "it can take the nil values" do
    let(:information) {
      {
        id: "4d8b92b64eb68a1b2c000414",
        name: "",
        birthday: "",
        deathday: "",
        hometown: "",
        location: "",
        nationality: "",
        image_versions: ["four_thirds",],
        _links: {
          thumbnail: {
            href: ""
          },
          image: {
            href: "https://d32dm0rphc51dk.cloudfront.net/n3RTu8EOaXrq3UCBXjh1Ag/{image_version}.jpg",
            templated: true
          },
          artworks: {
            href: "https://api.artsy.net/api/artworks?artist_id=4d8b92b64eb68a1b2c000414"
          },
          similar_artists: {
            href: ""
          },
          similar_contemporary_artists: {
            href: ""
          },
          genes: {
            href: ""
          }
        }
      }
    }
    let(:artist){ Artist.new(information) }
    subject{ ArtistPresenter.new(artist, @artist)}
    it "should provide a new note for a form" do
      expect(subject).to be_an ArtistPresenter
      expect(subject.id).to eq("4d8b92b64eb68a1b2c000414")
      expect(subject.image).to eq("https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fitfunnylife.files.wordpress.com%2F2008%2F06%2Ffunny-dogs-img_1.jpg&f=1")
      expect(subject.name).to eq("Unknown")
      expect(subject.birthday).to eq("Unknown")
      expect(subject.deathday).to eq("Unknown")
      expect(subject.hometown).to eq("Unknown")
      expect(subject.nationality).to eq("Unknown")
      expect(subject.similar_artists).to eq("Unknown")
      expect(subject.similar_contemporary_artists).to eq("Unknown")
      expect(subject.genes).to eq("Unknown")
    end
  end
end
