class StudySerializer < ActiveModel::Serializer
  attributes :id, :sentence
  has_one :user
  has_one :flashcards
end
