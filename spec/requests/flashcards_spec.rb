# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Flashcards API' do
  def flashcard_params
    {
      word: 'Adept',
      definition: 'Very skilled or proficient at something',
      sentence: 'He is adept at cutting through red tape.'
    }
  end

  def flashcards
    Flashcard.all
  end

  def flashcard
    Flashcard.first
  end

  before(:all) do
    Flashcard.create!(flashcard_params)
  end

  after(:all) do
    Flashcard.delete_all
  end

  describe 'GET /flashcards' do
    it 'lists all flashcards' do
      get '/flashcards'
      expect(response).to be_success
      flashcards_response = JSON.parse(response.body)
      expect(flashcards_response.length).to eq(flashcards.count)
      expect(flashcards_response.first['word']).to eq(flashcard['word'])
    end
  end

  describe 'GET /articles/:id' do
    it 'shows one flashcard' do
      get "/flashcards/#{flashcard.id}"
      expect(response).to be_success
      flashcards_response = JSON.parse(response.body)
      expect(flashcards_response['id']).to eq(flashcard.id)
    end
  end

  describe 'POST /flashcards/' do
    it 'create a new flashcard' do
      post "/flashcards", params: {flashcard: flashcard_params}

      flashcards_response = JSON.parse(response.body)
      expect(flashcards_response['name']).to eq(flashcard['name'])
    end
  end


end
