class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :author
      t.string :first_sentence
      t.integer :image_id

      t.timestamps
    end
  end
end
