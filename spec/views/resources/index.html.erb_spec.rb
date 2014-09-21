require 'rails_helper'

RSpec.describe "resources/index", :type => :view do
  before(:each) do
    assign(:resources, [
      Resource.create!(
        :content => "MyText",
        :note_card => nil
      ),
      Resource.create!(
        :content => "MyText",
        :note_card => nil
      )
    ])
  end

  it "renders a list of resources" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
