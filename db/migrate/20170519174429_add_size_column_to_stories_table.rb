class AddSizeColumnToStoriesTable < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :size, :integer, default: 1
  end
end
