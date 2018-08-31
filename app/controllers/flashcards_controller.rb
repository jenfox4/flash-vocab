# frozen_string_literal: true

class FlashcardsController < ProtectedController
before_action :set_flashcard, only: %i[update show destroy]
  # GET /examples
  # GET /examples.json
  def index
    @flashcards = current_user.flashcards.all

    render json: @flashcards
  end

  def show
    render json: @flashcard
  end

  def create
    @flashcard = current_user.flashcards.build(flashcard_params)

    if @flashcard.save
      render json: @flashcard, status: :created
    else
      render json: @flashcard.errors, status: :unprocessable_entity
    end
  end

  def update
    if @flashcard.update(flashcard_params)
      render json: @flashcard
    else
      render json: @flashcard.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @flashcard.delete

    head :no_content
  end

  def flashcard_params
    params.require(:flashcard).permit(:word, :definition, :sentence)
  end

  def set_flashcard
    @flashcard = current_user.flashcards.find(params[:id])
  end
end
