class CreateNeighborhoods < ActiveRecord::Migration[5.1]
  def change
    create_table :neighborhoods do |t|
      t.string :name, null: false
      t.string :quadrant
      t.string :photo_url

      t.timestamps
    end
  end
end
