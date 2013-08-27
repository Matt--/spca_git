require 'spec_helper'



describe "Home" do
  subject{ page }
  describe "Index page" do
    before { visit root_path }

    it { should have_title('SPCA Volunteer Portal') }

  end
end

describe "Volunteers" do
  subject{ page }
  describe "Index page" do
    before { visit volunteers_path }

    it { should have_title('volunteers') }

  end
end

describe "Volcoordinators" do
  subject{ page }
  describe "Index page" do
    before { visit volcoordinators_path }

    it { should have_title('Volunteer Coordinators') }

    it { should have_content('applications') }

  end
end


