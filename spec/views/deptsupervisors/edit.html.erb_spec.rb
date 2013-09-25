require 'spec_helper'

describe "deptsupervisors/edit" do
  before(:each) do
    @deptsupervisor = assign(:deptsupervisor, stub_model(Deptsupervisor,
      :firstname => "MyString",
      :lastname => "MyString",
      :title => "MyString",
      :department_id => 1
    ))
  end

  it "renders the edit deptsupervisor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", deptsupervisor_path(@deptsupervisor), "post" do
      assert_select "input#deptsupervisor_firstname[name=?]", "deptsupervisor[firstname]"
      assert_select "input#deptsupervisor_lastname[name=?]", "deptsupervisor[lastname]"
      assert_select "input#deptsupervisor_title[name=?]", "deptsupervisor[title]"
      assert_select "input#deptsupervisor_department_id[name=?]", "deptsupervisor[department_id]"
    end
  end
end
