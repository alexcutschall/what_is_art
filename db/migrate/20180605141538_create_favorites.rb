class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :artwork_id
      t.string :artwork_title
      t.string :artwork_category
      t.string :artwork_medium
      t.string :artwork_date
      t.string :artwork_series
      t.string :artwork_literature
      t.string :artwork_collecting_institution
    end
  end
end
