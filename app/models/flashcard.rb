# frozen_string_literal: true

class Flashcard < ApplicationRecord
  has_many :myflashcards
  has_many :users, through: :myflashcards
end
