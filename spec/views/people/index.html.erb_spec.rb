require 'spec_helper'

describe "people/index" do
  before(:each) do
    assign(:people, [
      stub_model(Person,
        :name => "",
        :dob => "",
        :email => "Email",
        :homePhone => "",
        :workPhone => "",
        :mobile => "Mobile"
      ),
      stub_model(Person,
        :name => "",
        :dob => "",
        :email => "Email",
        :homePhone => "",
        :workPhone => "",
        :mobile => "Mobile"
      )
    ])
  end

  it "renders a list of people" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
  end
end
