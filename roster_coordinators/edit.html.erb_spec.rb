require 'spec_helper'

describe "roster_coordinators/edit" do
  before(:each) do
    @roster_coordinator = assign(:roster_coordinator, stub_model(RosterCoordinator,
      :firstname => "MyString",
      :lastname => "MyString",
      :title => "MyString",
      :department_id => 1
    ))
  end

  it "renders the edit roster_coordinator form" do
    render

    assert_select "form[action=?][method=?]", roster_coordinator_path(@roster_coordinator), "post" do
      assert_select "input#roster_coordinator_firstname[name=?]", "roster_coordinator[firstname]"
      assert_select "input#roster_coordinator_lastname[name=?]", "roster_coordinator[lastname]"
      assert_select "input#roster_coordinator_title[name=?]", "roster_coordinator[title]"
    end
  end
end
