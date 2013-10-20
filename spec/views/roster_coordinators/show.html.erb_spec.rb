require 'spec_helper'

describe "roster_coordinators/show" do
  before(:each) do
    @roster_coordinator = assign(:roster_coordinator, stub_model(RosterCoordinator,
      :firstname => "Firstname",
      :lastname => "Lastname",
      :title => "Title",
      :department_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Firstname/)
    rendered.should match(/Lastname/)
    rendered.should match(/Title/)
    rendered.should match(/1/)
  end
end
