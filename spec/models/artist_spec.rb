require 'rails_helper'

describe Artist do
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
  subject{ Artist.new(information) }
  context 'initialize' do
    it 'exists with attributes' do
      expect(subject).to be_an Artist
      expect(subject.id).to eq("4d8b92b64eb68a1b2c000414")
      expect(subject.name).to eq("Gustav Klimt")
      expect(subject.birthday).to eq("1862")
      expect(subject.deathday).to eq("1918")
      expect(subject.hometown).to eq("Baumgarten, Austria")
      expect(subject.location).to eq("Vienna, Austria")
      expect(subject.nationality).to eq("Austrian")
      expect(subject.image).to eq("https://d32dm0rphc51dk.cloudfront.net/n3RTu8EOaXrq3UCBXjh1Ag/four_thirds.jpg")
      expect(subject.similar_artists).to eq("https://api.artsy.net/api/artists?similar_to_artist_id=4d8b92b64eb68a1b2c000414")
      expect(subject.similar_contemporary_artists).to eq("https://api.artsy.net/api/artists?similar_to_artist_id=4d8b92b64eb68a1b2c000414&similarity_type=contemporary")
      expect(subject.genes).to eq("https://api.artsy.net/api/genes?artist_id=4d8b92b64eb68a1b2c000414")
      expect(subject.large_image_link).to eq("https://d32dm0rphc51dk.cloudfront.net/n3RTu8EOaXrq3UCBXjh1Ag/{image_version}.jpg")
      expect(subject.image_sizes).to eq(["four_thirds"])
    end
  end
end
