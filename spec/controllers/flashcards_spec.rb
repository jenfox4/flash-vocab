# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FlashcardsController do
  def flashcard_params
    {
      word: 'Adept',
      definition: 'Very skilled or proficient at something',
      sentence: 'He is adept at cutting through red tape.'
    }
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

  describe 'GET index' do
    before( :each) {get :index}
      it 'is succesful' do
        expect(response.status).to eq(200)
      end

      it 'renders a JSON response' do
        flashcards_response = JSON.parse(response.body)
        expect(flashcards_response).not_to be_nil
        expect(flashcards_response.first['word']).to eq(flashcard['word'])
      end
    end

    describe 'GET show' do
      before(:each) {get :show, params: {id: flashcard.id}}
      it 'is successful' do
        expect(response.status).to eq(200)
      end

      it 'renders a JSON response' do
        flashcards_response = JSON.parse(response.body)
        expect(flashcards_response).not_to be_nil
        expect(flashcards_response['id']).to eq(flashcard.id)
      end
    end

    describe 'POST create' do
      before(:each) do
        post :create, params: {flashcard: flashcard_params}
      end
      it 'is successful' do
        expect(response.status).to eq(201)
      end

      it 'renders a JSON response' do
        flashcards_response = JSON.parse(response.body)
        expect(flashcards_response).not_to be_nil
        expect(flashcards_response['name']).to eq(flashcard['name'])
      end
    end

    describe 'PATCH update' do
      def sentence_diff
        {sentence: 'She is adept at throwing an arrow'}
      end

      before(:each) do
        patch :update, params: {id: flashcard.id, flashcard: sentence_diff}
      end

      it 'is successful' do
        expect(response.status).to eq(200)
      end

      it 'renders a JSON response' do
        flashcards_response = JSON.parse(response.body)
        expect(flashcards_response['sentence']).to eq(flashcard['sentence'])
      end
    end 

    describe 'DELETE destroy' do
      it 'is successful and returns an empty response' do
        delete :destroy, params: {id: flashcard.id}
        expect(response.body).to be_empty
        expect(flashcard).to be_nil
      end
    end

end
