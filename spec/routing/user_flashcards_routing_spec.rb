require "rails_helper"

RSpec.describe UserFlashcardsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_flashcards").to route_to("user_flashcards#index")
    end


    it "routes to #show" do
      expect(:get => "/user_flashcards/1").to route_to("user_flashcards#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/user_flashcards").to route_to("user_flashcards#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_flashcards/1").to route_to("user_flashcards#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_flashcards/1").to route_to("user_flashcards#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_flashcards/1").to route_to("user_flashcards#destroy", :id => "1")
    end

  end
end
