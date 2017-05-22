class AddDescriptiontoStories < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :description, :string, null: false, default: "Knowledge, like air, is vital to life. Like air, no one should be denied it."
  end
end
