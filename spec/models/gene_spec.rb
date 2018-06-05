require 'rails_helper'

describe Gene do
  let(:information) {
    {
      id: "56539404ebad647f5493ac0f",
      display_name: "Modern",
      description: "All art, design, decorative art, and architecture produced from roughly 1860 to 1970.",
      image_versions: ["big_and_tall"],
      _links: {
        artworks: {
          href: "https://api.artsy.net/api/artworks?gene_id=56539404ebad647f5493ac0f"
        },
        artists: {
          href: "https://api.artsy.net/api/artists?gene_id=56539404ebad647f5493ac0f"
        }
      }
    }
  }
  subject{ Gene.new(information) }
  context 'initialize' do
    it 'exists with attributes' do
      expect(subject).to be_a Gene
      expect(subject.id).to eq("56539404ebad647f5493ac0f")
      expect(subject.name).to eq("Modern")
      expect(subject.description).to eq("All art, design, decorative art, and architecture produced from roughly 1860 to 1970.")
      expect(subject.artworks).to eq("https://api.artsy.net/api/artworks?gene_id=56539404ebad647f5493ac0f")
      expect(subject.artists).to eq("https://api.artsy.net/api/artists?gene_id=56539404ebad647f5493ac0f")
    end
  end
end
