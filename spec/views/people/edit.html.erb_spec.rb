require 'spec_helper'

describe "people/edit" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :name => "",
      :dob => "",
      :email => "MyString",
      :homePhone => "",
      :workPhone => "",
      :mobile => "MyString"
    ))
  end

  it "renders the edit person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", person_path(@person), "post" do
      assert_select "input#person_name[name=?]", "person[name]"
      assert_select "input#person_dob[name=?]", "person[dob]"
      assert_select "input#person_email[name=?]", "person[email]"
      assert_select "input#person_homePhone[name=?]", "person[homePhone]"
      assert_select "input#person_workPhone[name=?]", "person[workPhone]"
      assert_select "input#person_mobile[name=?]", "person[mobile]"
    end
  end
end
