class CreateLandmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :landmarks do |t|
      t.string :name, null: false
      t.string :photo_url
      t.string :location, null: false
      t.references :neighborhood, foreign_key: true, null: false

      t.timestamps
    end
  end
end
