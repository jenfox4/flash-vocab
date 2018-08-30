# frozen_string_literal: true

class CreateFlashcards < ActiveRecord::Migration[5.1]
  def change
    create_table :flashcards do |t|
      t.string :word
      t.string :definition
      t.string :sentence
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
