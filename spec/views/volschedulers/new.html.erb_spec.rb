require 'spec_helper'

describe "volschedulers/new" do
  before(:each) do
    assign(:volscheduler, stub_model(Volscheduler,
      :job => "MyString"
    ).as_new_record)
  end

  it "renders new volscheduler form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", volschedulers_path, "post" do
      assert_select "input#volscheduler_job[name=?]", "volscheduler[job]"
    end
  end
end
