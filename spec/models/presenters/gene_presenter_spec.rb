require 'rails_helper'

describe GenePresenter do
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
  let(:gene){ Gene.new(information) }
  subject{ GenePresenter.new(gene, @gene)}
  it "should provide a new note for a form" do
    expect(subject).to be_an GenePresenter
    expect(subject.id).to eq("56539404ebad647f5493ac0f")
    expect(subject.name).to eq("Modern")
    expect(subject.description).to eq("All art, design, decorative art, and architecture produced from roughly 1860 to 1970.")
  end
  describe 'it can have empty values' do
    let(:information) {
        {
          id: "56539404ebad647f5493ac0f",
          display_name: "",
          description: "",
          image_versions: ["big_and_tall"],
          _links: {
            artworks: {
              href: ""
            },
            artists: {
              href: ""
            }
          }
        }
    }
    let(:gene){ Gene.new(information) }
    subject{ GenePresenter.new(gene, @gene)}
    it "should provide a new note for a form" do
      expect(subject).to be_an GenePresenter
      expect(subject.id).to eq("56539404ebad647f5493ac0f")
      expect(subject.name).to eq("Unknown")
      expect(subject.description).to eq("Unknown")
    end
  end
end
