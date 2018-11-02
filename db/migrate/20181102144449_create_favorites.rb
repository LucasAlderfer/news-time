class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.string :author
      t.string :source_id
      t.string :source_name
      t.string :title
      t.string :description
      t.string :url
      t.string :urltoimage
      t.string :published_at
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
