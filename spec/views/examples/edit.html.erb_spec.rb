require 'rails_helper'

RSpec.describe "examples/edit", :type => :view do
  before(:each) do
    @example = assign(:example, Example.create!(
      :content => "MyText",
      :note_card => nil
    ))
  end

  it "renders the edit example form" do
    render

    assert_select "form[action=?][method=?]", example_path(@example), "post" do

      assert_select "textarea#example_content[name=?]", "example[content]"

      assert_select "input#example_note_card_id[name=?]", "example[note_card_id]"
    end
  end
end
