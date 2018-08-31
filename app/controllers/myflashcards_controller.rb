class MyflashcardsController < ApplicationController
  before_action :set_myflashcard, only: [:show, :update, :destroy]

  # GET /myflashcards
  def index
    @myflashcards = Myflashcard.all

    render json: @myflashcards
  end

  # GET /myflashcards/1
  def show
    render json: @myflashcard
  end

  # POST /myflashcards
  def create
    @myflashcard = Myflashcard.new(myflashcard_params)

    if @myflashcard.save
      render json: @myflashcard, status: :created, location: @myflashcard
    else
      render json: @myflashcard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /myflashcards/1
  def update
    if @myflashcard.update(myflashcard_params)
      render json: @myflashcard
    else
      render json: @myflashcard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /myflashcards/1
  def destroy
    @myflashcard.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myflashcard
      @myflashcard = Myflashcard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def myflashcard_params
      params.require(:myflashcard).permit(:user_id, :flashcards_id, :sentence)
    end
end
