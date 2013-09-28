require 'spec_helper'

describe "orientations/show" do
  before(:each) do
    @orientation = assign(:orientation, stub_model(Orientation,
      :presenter => "Presenter"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Presenter/)
  end
end
