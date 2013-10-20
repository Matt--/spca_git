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

    assert_select "tr>td", :text => "Presenter".to_s, :count => 2
  end
end
