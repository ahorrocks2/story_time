class AddFavsToStories < ActiveRecord::Migration
  def change
    add_column(:stories, :favorites, :integer, :default => 0)
  end
end
