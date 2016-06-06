class AddCategoryToPhrase < ActiveRecord::Migration
  def change
    add_reference :phrases, :category, index:true
  end
end
