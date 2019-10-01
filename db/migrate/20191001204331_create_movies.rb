class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.integer :tmdb_id
      t.string :release_date
      t.integer :runtime
      t.string :tagline
      t.integer :imdb_id

      t.timestamps
    end
  end
end
