class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.string :content
      t.integer :user_id


      t.timestamps null: false
    end
  end
end
