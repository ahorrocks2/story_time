class CreateImagesStories < ActiveRecord::Migration
  def change
    create_table :images_stories do |t|
      t.integer :story_id
      t.integer :image_id

      t.timestamps
    end
  end
end
