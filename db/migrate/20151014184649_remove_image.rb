class RemoveImage < ActiveRecord::Migration
  def change
    remove_column(:images, :story_id, :integer)
  end
  def change
    remove_column(:stories, :image_id, :integer)
  end
end
