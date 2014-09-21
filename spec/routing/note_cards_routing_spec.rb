require "rails_helper"

RSpec.describe NoteCardsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/note_cards").to route_to("note_cards#index")
    end

    it "routes to #new" do
      expect(:get => "/note_cards/new").to route_to("note_cards#new")
    end

    it "routes to #show" do
      expect(:get => "/note_cards/1").to route_to("note_cards#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/note_cards/1/edit").to route_to("note_cards#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/note_cards").to route_to("note_cards#create")
    end

    it "routes to #update" do
      expect(:put => "/note_cards/1").to route_to("note_cards#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/note_cards/1").to route_to("note_cards#destroy", :id => "1")
    end

  end
end
