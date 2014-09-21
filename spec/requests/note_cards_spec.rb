require 'rails_helper'

RSpec.describe "NoteCards", :type => :request do
  describe "GET /note_cards" do
    it "works! (now write some real specs)" do
      get note_cards_path
      expect(response).to have_http_status(200)
    end
  end
end
