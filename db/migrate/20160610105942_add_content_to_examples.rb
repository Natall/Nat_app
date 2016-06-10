class AddContentToExamples < ActiveRecord::Migration
  def up
    add_column :examples, :content, :text, null: false
  end

  def down
    remove_column :examples, :content
  end
end
