require 'spec_helper'

describe "volschedulers/index" do
  before(:each) do
    assign(:volschedulers, [
      stub_model(Volscheduler,
        :job => "Job"
      ),
      stub_model(Volscheduler,
        :job => "Job"
      )
    ])
  end

  it "renders a list of volschedulers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Job".to_s, :count => 2
  end
end
