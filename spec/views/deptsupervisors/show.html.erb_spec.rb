require 'spec_helper'

describe "deptsupervisors/show" do
  before(:each) do
    @deptsupervisor = assign(:deptsupervisor, stub_model(Deptsupervisor,
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
