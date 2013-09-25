require 'spec_helper'

describe "deptsupervisors/new" do
  before(:each) do
    assign(:deptsupervisor, stub_model(Deptsupervisor,
      :firstname => "MyString",
      :lastname => "MyString",
      :title => "MyString",
      :department_id => 1
    ).as_new_record)
  end

  it "renders new deptsupervisor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", deptsupervisors_path, "post" do
      assert_select "input#deptsupervisor_firstname[name=?]", "deptsupervisor[firstname]"
      assert_select "input#deptsupervisor_lastname[name=?]", "deptsupervisor[lastname]"
      assert_select "input#deptsupervisor_title[name=?]", "deptsupervisor[title]"
      assert_select "input#deptsupervisor_department_id[name=?]", "deptsupervisor[department_id]"
    end
  end
end
