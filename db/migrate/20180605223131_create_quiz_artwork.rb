class CreateQuizArtwork < ActiveRecord::Migration[5.2]
  def change
    create_table :quiz_artworks do |t|
      t.string :image
      t.string :title
      t.references :quiz_artist, foreign_key: true
    end
  end
end
