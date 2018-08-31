class CreateMyflashcards < ActiveRecord::Migration[5.1]
  def change
    create_table :myflashcards do |t|
      t.references :user, foreign_key: true
      t.references :flashcard, foreign_key: true
      t.text :sentence

      t.timestamps
    end
  end
end
