require "rails_helper"

RSpec.describe MyflashcardsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/myflashcards").to route_to("myflashcards#index")
    end


    it "routes to #show" do
      expect(:get => "/myflashcards/1").to route_to("myflashcards#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/myflashcards").to route_to("myflashcards#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/myflashcards/1").to route_to("myflashcards#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/myflashcards/1").to route_to("myflashcards#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/myflashcards/1").to route_to("myflashcards#destroy", :id => "1")
    end

  end
end
