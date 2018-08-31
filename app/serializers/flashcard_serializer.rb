# frozen_string_literal: true

class FlashcardSerializer < ActiveModel::Serializer
  attributes :id, :word, :definition
  has_many :myflashcards
end
