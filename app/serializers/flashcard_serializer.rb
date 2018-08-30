# frozen_string_literal: true

class FlashcardSerializer < ActiveModel::Serializer
  attributes :word, :definition, :sentence
  belongs_to :user
end
