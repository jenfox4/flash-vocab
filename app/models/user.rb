# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :Myflashcards
  has_many :Flashcards, through: :Myflashcards
end
