require 'rails_helper'

RSpec.describe "note_cards/show", :type => :view do
  before(:each) do
    @note_card = assign(:note_card, NoteCard.create!(
      :title => "Title",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
  end
end
