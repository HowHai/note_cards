require 'rails_helper'

RSpec.describe "answers/new", :type => :view do
  before(:each) do
    assign(:answer, Answer.new(
      :content => "MyText",
      :note_card => nil
    ))
  end

  it "renders new answer form" do
    render

    assert_select "form[action=?][method=?]", answers_path, "post" do

      assert_select "textarea#answer_content[name=?]", "answer[content]"

      assert_select "input#answer_note_card_id[name=?]", "answer[note_card_id]"
    end
  end
end
