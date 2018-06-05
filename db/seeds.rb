require 'csv'

OPTIONS = { headers: true, header_converters: :symbol }

CSV.foreach('./db/fixtures/artists.csv', OPTIONS) do |row|
  QuizArtist.create(id: row[:id],
                    name: row[:name])
end

CSV.foreach('./db/fixtures/artworks.csv', OPTIONS) do |row|
  QuizArtwork.create(image: row[:image],
                    title: row[:title],
                    quiz_artist_id: row[:quiz_artist_id])
end
