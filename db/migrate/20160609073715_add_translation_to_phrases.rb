class AddTranslationToPhrases < ActiveRecord::Migration
  def change
    add_column :phrases, :translation, :string
  end
end
