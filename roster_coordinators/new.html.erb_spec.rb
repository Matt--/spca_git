require 'spec_helper'

describe "roster_coordinators/new" do
  before(:each) do
    assign(:roster_coordinator, stub_model(RosterCoordinator,
      :firstname => "MyString",
      :lastname => "MyString",
      :title => "MyString",
      :department_id => 1
    ).as_new_record)
  end

  it "renders new roster_coordinator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", roster_coordinators_path, "post" do
      assert_select "input#roster_coordinator_firstname[name=?]", "roster_coordinator[firstname]"
      assert_select "input#roster_coordinator_lastname[name=?]", "roster_coordinator[lastname]"
      assert_select "input#roster_coordinator_title[name=?]", "roster_coordinator[title]"
      assert_select "input#roster_coordinator_department_id[name=?]", "roster_coordinator[department_id]"
    end
  end
end
