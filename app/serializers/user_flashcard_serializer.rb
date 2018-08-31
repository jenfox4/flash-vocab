class UserFlashcardSerializer < ActiveModel::Serializer
  attributes :id, :word, :definition, :sentence
  has_one :users
  has_one :flashcards
end
