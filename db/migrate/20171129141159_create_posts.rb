class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :author, null: false
      t.string :title, null: false
      t.string :photo_url
      t.string :content, null: false
      t.string :inquiry_type
      t.string :location, null: false
      t.references :neighborhood, foreign_key: true, null: false

      t.timestamps
    end
  end
end
