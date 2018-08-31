# frozen_string_literal: true

class FlashcardSerializer < ActiveModel::Serializer
  attributes :id, :word, :definition, :sentence
  belongs_to :user
end
