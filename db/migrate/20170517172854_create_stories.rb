class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :author_id, null: false
      t.string :image_url, null: false
      t.string :read_time, null: false
      t.integer :topic_id, null: false

      t.timestamps
    end
    add_index :stories, :author_id
    add_index :stories, :topic_id
  end
end
