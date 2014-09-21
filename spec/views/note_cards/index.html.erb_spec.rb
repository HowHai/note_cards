require 'rails_helper'

RSpec.describe "note_cards/index", :type => :view do
  before(:each) do
    assign(:note_cards, [
      NoteCard.create!(
        :title => "Title",
        :user => nil
      ),
      NoteCard.create!(
        :title => "Title",
        :user => nil
      )
    ])
  end

  it "renders a list of note_cards" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
