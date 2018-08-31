require 'rails_helper'

RSpec.describe "UserFlashcards", type: :request do
  describe "GET /user_flashcards" do
    it "works! (now write some real specs)" do
      get user_flashcards_path
      expect(response).to have_http_status(200)
    end
  end
end
