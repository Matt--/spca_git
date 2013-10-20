require 'spec_helper'

describe "roster_coordinators/index" do
  before(:each) do
    Department.create ({name: "cat department"})
    @department = Department.all
    RosterCoordinator.create([{ 
        firstname:  "Firstname",
        lastname:   "Lastname",
        title:      "Title",
        department_id: 1
      },{
        firstname:   "Firstname",
        lastname:    "Lastname",
        title:      "Title",
        department_id: 1
      }
    ])
    @roster_coordinators = RosterCoordinator.all

  end

puts "############################################"
puts @department.inspect
puts @roster_coordinators.inspect
 

  it "renders a list of roster_coordinators" do
    render

    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
