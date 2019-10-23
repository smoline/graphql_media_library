class AddPeopleCastAndCrew < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :biography
      t.string :birthday
      t.string :deathday
      t.integer :tmdb_people_id
      t.string :imdb_people_id
      t.string :place_of_birth
      t.string :gender
      t.string :profile_path_url

      t.timestamps
    end

    create_table :casts do |t|
      t.references :castable, polymorphic: true
      t.string :character
      t.references :people, null: false, foreign_key: true

      t.timestamps
    end

    create_table :crews do |t|
      t.references :crewable, polymorphic: true
      t.string :department
      t.string :job
      t.references :people, null: false, foreign_key: true

      t.timestamps
    end
  end
end
