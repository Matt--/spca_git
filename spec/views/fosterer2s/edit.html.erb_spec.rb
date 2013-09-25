require 'spec_helper'

describe "fosterer2s/edit" do
  before(:each) do
    @fosterer2 = assign(:fosterer2, stub_model(Fosterer2,
      :name => "MyString"
    ))
  end

  it "renders the edit fosterer2 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fosterer2_path(@fosterer2), "post" do
      assert_select "input#fosterer2_name[name=?]", "fosterer2[name]"
    end
  end
end
