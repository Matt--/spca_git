require 'spec_helper'

describe "fosterer2s/show" do
  before(:each) do
    @fosterer2 = assign(:fosterer2, stub_model(Fosterer2,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
