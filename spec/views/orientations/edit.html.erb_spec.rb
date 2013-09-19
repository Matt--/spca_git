require 'spec_helper'

describe "orientations/edit" do
  before(:each) do
    @orientation = assign(:orientation, stub_model(Orientation,
      :presenter => "MyString"
    ))
  end

  it "renders the edit orientation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", orientation_path(@orientation), "post" do
      assert_select "input#orientation_presenter[name=?]", "orientation[presenter]"
    end
  end
end
