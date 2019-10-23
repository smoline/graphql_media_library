class AddTvShows < ActiveRecord::Migration[6.0]
  def change
    create_table :tv_shows do |t|
      t.string :tv_show_title
      t.string :episode_name
      t.string :description
      t.integer :season
      t.integer :episode
      t.integer :tmdb_id
      t.string :imdb_id
      t.string :tv_image_url

      t.timestamps
    end
  end
end
