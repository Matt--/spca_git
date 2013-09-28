require 'spec_helper'

describe "people/new" do
  before(:each) do
    assign(:person, stub_model(Person,
      :name => "",
      :dob => "",
      :email => "MyString",
      :homePhone => "",
      :workPhone => "",
      :mobile => "MyString"
    ).as_new_record)
  end

  it "renders new person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", people_path, "post" do
      assert_select "input#person_name[name=?]", "person[name]"
      assert_select "input#person_dob[name=?]", "person[dob]"
      assert_select "input#person_email[name=?]", "person[email]"
      assert_select "input#person_homePhone[name=?]", "person[homePhone]"
      assert_select "input#person_workPhone[name=?]", "person[workPhone]"
      assert_select "input#person_mobile[name=?]", "person[mobile]"
    end
  end
end
