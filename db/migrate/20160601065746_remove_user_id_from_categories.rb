class RemoveUserIdFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :user_id, :string
  end
end
