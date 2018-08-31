require 'rails_helper'

RSpec.describe "Myflashcards", type: :request do
  describe "GET /myflashcards" do
    it "works! (now write some real specs)" do
      get myflashcards_path
      expect(response).to have_http_status(200)
    end
  end
end
