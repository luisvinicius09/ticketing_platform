class RenameColumnOfEvents < ActiveRecord::Migration[6.1]
  def change
    rename_column :events, :user_id, :owner_id
  end
end
