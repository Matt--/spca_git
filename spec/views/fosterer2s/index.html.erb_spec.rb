require 'spec_helper'

describe "fosterer2s/index" do
  before(:each) do
    assign(:fosterer2s, [
      stub_model(Fosterer2,
        :name => "Name"
      ),
      stub_model(Fosterer2,
        :name => "Name"
      )
    ])
  end

  it "renders a list of fosterer2s" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
