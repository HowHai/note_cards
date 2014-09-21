require 'rails_helper'

RSpec.describe "examples/new", :type => :view do
  before(:each) do
    assign(:example, Example.new(
      :content => "MyText",
      :note_card => nil
    ))
  end

  it "renders new example form" do
    render

    assert_select "form[action=?][method=?]", examples_path, "post" do

      assert_select "textarea#example_content[name=?]", "example[content]"

      assert_select "input#example_note_card_id[name=?]", "example[note_card_id]"
    end
  end
end
