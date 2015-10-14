class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.string :text
      t.integer :story_id
      t.string :author
      t.timestamps
    end
  end
end
