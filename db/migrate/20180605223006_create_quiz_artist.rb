class CreateQuizArtist < ActiveRecord::Migration[5.2]
  def change
    create_table :quiz_artists do |t|
      t.string :name
    end
  end
end
