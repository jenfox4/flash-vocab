# frozen_string_literal: true

class FlashcardsController < ApplicationController

  # GET /examples
  # GET /examples.json
  def index
    @flashcards = Flashcard.all

    render json: @flashcards
  end

  def show
    @flashcard = Flashcard.find(params[:id])

    render json: @flashcard
  end

  def create
    @flashcard = Flashcard.new(flashcard_params)

    if @flashcard.save
      render json: @flashcard, status: :created
    else
      render json: @flashcard.errors, status: :unprocessable_entity
    end
  end

  def update
    @flashcard = Flashcard.find(params[:id])
    
    if @flashcard.update(flashcard_params)
      render json: @flashcard
    else
      render json: @flashcard.errors, status: :unprocessable_entity
    end
  end


  def flashcard_params
    params.require(:flashcard).permit(:word, :definition, :sentence)
  end
end
