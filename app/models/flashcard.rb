# frozen_string_literal: true
# frozen_string_literal: true

class Flashcard < ApplicationRecord
  belongs_to :user
  validates :text, :user, presence: true
end
