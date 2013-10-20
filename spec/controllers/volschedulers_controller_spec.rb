require 'spec_helper'

describe VolschedulersController do

  # This should return the minimal set of attributes required to create a valid
  # Volscheduler. As you add validations to Volscheduler, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "department_id" => 1 } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VolschedulersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all volschedulers as @volschedulers" do
      volscheduler = Volscheduler.create! valid_attributes
      get :index, {}, valid_session
      assigns(:volscheduler).should eq(volscheduler)
    end
  end

end
