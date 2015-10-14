class RemoveStoryId < ActiveRecord::Migration
  def change
    remove_column(:images, :story_id, :integer)
  end
end
