require 'spec_helper'

describe "people/show" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :name => "",
      :dob => "",
      :email => "Email",
      :homePhone => "",
      :workPhone => "",
      :mobile => "Mobile"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Email/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Mobile/)
  end
end
