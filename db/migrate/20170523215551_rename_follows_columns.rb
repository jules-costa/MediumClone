class RenameFollowsColumns < ActiveRecord::Migration[5.0]
  def change
    rename_column :follows, :followee_id, :guru_id
    rename_column :follows, :follower_id, :disciple_id 
  end
end
