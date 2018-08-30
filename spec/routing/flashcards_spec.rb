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
    expect(:post => ('/flashcards')).to route_to ('flashcards#create')
  end
end
