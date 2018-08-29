require 'rails_helper'

RSpec.describe 'Flashcards API' do
  def article_params
    {
      word: 'Adept',
      definition: 'Very skilled or proficient at something',
      sentence: 'He is adept at cutting through red tape.'
    }
  end

  describe 'GET /flashcards' do
    it 'lists all flashcards' do
      get '/flashcards'
      expect(response).to be_success
      articles_response = JSON.parse(response.body)
      expect(articles_response.length).to eq(articles.count)
      expect(articles_response.first['word']).to eq(article['word'])
    end
  end
end
