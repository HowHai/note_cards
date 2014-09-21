require 'rails_helper'

RSpec.describe "note_cards/edit", :type => :view do
  before(:each) do
    @note_card = assign(:note_card, NoteCard.create!(
      :title => "MyString",
      :user => nil
    ))
  end

  it "renders the edit note_card form" do
    render

    assert_select "form[action=?][method=?]", note_card_path(@note_card), "post" do

      assert_select "input#note_card_title[name=?]", "note_card[title]"

      assert_select "input#note_card_user_id[name=?]", "note_card[user_id]"
    end
  end
end
