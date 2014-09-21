require 'rails_helper'

RSpec.describe "answers/edit", :type => :view do
  before(:each) do
    @answer = assign(:answer, Answer.create!(
      :content => "MyText",
      :note_card => nil
    ))
  end

  it "renders the edit answer form" do
    render

    assert_select "form[action=?][method=?]", answer_path(@answer), "post" do

      assert_select "textarea#answer_content[name=?]", "answer[content]"

      assert_select "input#answer_note_card_id[name=?]", "answer[note_card_id]"
    end
  end
end
