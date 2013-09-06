require 'spec_helper'

describe "volschedulers/edit" do
  before(:each) do
    @volscheduler = assign(:volscheduler, stub_model(Volscheduler,
      :job => "MyString"
    ))
  end

  it "renders the edit volscheduler form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", volscheduler_path(@volscheduler), "post" do
      assert_select "input#volscheduler_job[name=?]", "volscheduler[job]"
    end
  end
end
