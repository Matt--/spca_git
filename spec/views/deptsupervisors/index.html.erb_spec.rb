require 'spec_helper'

describe "deptsupervisors/index" do
  before(:each) do
    assign(:deptsupervisors, [
      stub_model(Deptsupervisor,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :title => "Title",
        :department_id => 1
      ),
      stub_model(Deptsupervisor,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :title => "Title",
        :department_id => 1
      )
    ])
  end

  it "renders a list of deptsupervisors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
