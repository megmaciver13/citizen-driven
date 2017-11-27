class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :author
      t.string :title
      t.string :photo_url
      t.string :content
      t.string :inquiry_type
      
      t.timestamps
    end
  end
end
