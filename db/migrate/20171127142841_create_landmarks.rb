class CreateLandmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :landmarks do |t|
      t.string :name
      t.string :photo_url
      t.string :location
      t.string :agency

      t.timestamps
    end
  end
end
