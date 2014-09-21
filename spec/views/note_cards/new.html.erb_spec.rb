require 'rails_helper'

RSpec.describe "note_cards/new", :type => :view do
  before(:each) do
    assign(:note_card, NoteCard.new(
      :title => "MyString",
      :user => nil
    ))
  end

  it "renders new note_card form" do
    render

    assert_select "form[action=?][method=?]", note_cards_path, "post" do

      assert_select "input#note_card_title[name=?]", "note_card[title]"

      assert_select "input#note_card_user_id[name=?]", "note_card[user_id]"
    end
  end
end
