require 'spec_helper'

describe "fosterer2s/new" do
  before(:each) do
    assign(:fosterer2, stub_model(Fosterer2,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new fosterer2 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fosterer2s_path, "post" do
      assert_select "input#fosterer2_name[name=?]", "fosterer2[name]"
    end
  end
end
