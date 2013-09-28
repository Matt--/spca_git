require 'spec_helper'

describe "orientations/new" do
  before(:each) do
    assign(:orientation, stub_model(Orientation,
      :presenter => "MyString"
    ).as_new_record)
  end

  it "renders new orientation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", orientations_path, "post" do
      assert_select "input#orientation_presenter[name=?]", "orientation[presenter]"
    end
  end
end
