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

  def flashcard_params
    params.requre(:flashcard).permit(:word, :definition, :sentence)
  end
end
