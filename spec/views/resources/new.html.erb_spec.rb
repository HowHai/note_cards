require 'rails_helper'

RSpec.describe "resources/new", :type => :view do
  before(:each) do
    assign(:resource, Resource.new(
      :content => "MyText",
      :note_card => nil
    ))
  end

  it "renders new resource form" do
    render

    assert_select "form[action=?][method=?]", resources_path, "post" do

      assert_select "textarea#resource_content[name=?]", "resource[content]"

      assert_select "input#resource_note_card_id[name=?]", "resource[note_card_id]"
    end
  end
end
