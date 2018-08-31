# frozen_string_literal: true

class Flashcard < ApplicationRecord
  has_many :Myflashcards
  has_many :Users, through: :Myflashcards
end
