# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'routes for flashcards' do

  it 'routes GET /flashcards to the flashcards#index action' do
    expect(:get => ('/flashcards')).to route_to('flashcards#index')
  end

  it 'routes GET /flashcards/:id to the flashcards#show action' do
    expect(:get => ('/flashcards/1')).to route_to(
      controller: 'flashcards',
      action: 'show',
      id: '1')
    end

  it 'routes POST /flashcards to the flashcards#create action' do
    expect(:post => ('/flashcards')).to route_to('flashcards#create')
  end

  it 'routes PATCH /flashcards to the flashcards#update action' do
    expect(:patch => ('/flashcards/2')).to route_to(
      controller: 'flashcards',
      action: 'update',
      id: '2'
    )
  end

  it 'routes DELETE /flashcards to the flashcards#delete action' do
    expect(:delete => ('/flashcard/3')).to route_to(
      controller: 'flashcards',
      action: 'destroy',
      id: '3'
    )
  end
end
