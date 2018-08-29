require 'rails_helper'

RSpec.describe 'routes for flashcards' do
  it 'routes GET /flashcards to the flashcards#index action' do
  expect(:get => ('/flashcards')).to route_to('flashcards#index')
end
end
