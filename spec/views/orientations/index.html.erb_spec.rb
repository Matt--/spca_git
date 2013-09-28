require 'spec_helper'

describe "orientations/index" do
  before(:each) do
    assign(:orientations, [
      stub_model(Orientation,
        :presenter => "Presenter"
      ),
      stub_model(Orientation,
        :presenter => "Presenter"
      )
    ])
  end

  it "renders a list of orientations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Presenter".to_s, :count => 2
  end
end
