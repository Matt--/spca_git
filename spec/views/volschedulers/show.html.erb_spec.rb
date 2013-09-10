require 'spec_helper'

describe "volschedulers/show" do
  before(:each) do
    @volscheduler = assign(:volscheduler, stub_model(Volscheduler,
      :job => "Job"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Job/)
  end
end
