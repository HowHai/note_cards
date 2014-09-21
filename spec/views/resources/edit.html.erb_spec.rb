require 'rails_helper'

RSpec.describe "resources/edit", :type => :view do
  before(:each) do
    @resource = assign(:resource, Resource.create!(
      :content => "MyText",
      :note_card => nil
    ))
  end

  it "renders the edit resource form" do
    render

    assert_select "form[action=?][method=?]", resource_path(@resource), "post" do

      assert_select "textarea#resource_content[name=?]", "resource[content]"

      assert_select "input#resource_note_card_id[name=?]", "resource[note_card_id]"
    end
  end
end
