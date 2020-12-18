class RemoveUserIdFromRelationship < ActiveRecord::Migration[5.2]
  def change
    remove_column :relationships, :user_id, :string
  end
end
