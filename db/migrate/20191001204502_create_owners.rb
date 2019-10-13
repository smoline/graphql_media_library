class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :notes
      t.integer :upc
      t.integer :rating
      t.references :ownable, polymorphic: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
