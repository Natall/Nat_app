class AddUserAndPhraseToExamples < ActiveRecord::Migration
  def change
    add_reference :examples, :user, index: true
    add_foreign_key :examples, :users
    add_reference :examples, :phrase, index: true
    add_foreign_key :examples, :phrases
  end
end
