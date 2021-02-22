class AddOwnerIdToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :owner_id, :integer
  end
end
