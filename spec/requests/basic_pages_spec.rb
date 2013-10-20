require 'spec_helper'



describe "Home" do
  subject{ page }
  describe "Index page" do
    before { visit root_path }

    it { should have_title('SPCA') }
    it { should have_content('SPCA Volunteer Portal') }

  end
end

describe "Volunteers" do
  subject{ page }
  describe "Index page" do
    before { visit volunteers_path }

    it { should have_title('SPCA') }
    it { should have_content('volunteer') }

  end
end

describe "Volcoordinators" do
  subject{ page }
  describe "Index page" do
    before { visit volcoordinators_path }

    it { should have_title('SPCA') }

    it { should have_content('Coordinators') }

  end
end

describe "Fosterers" do
  subject{ page }
  describe "Index page" do
    before { visit fosterers_path }

    it { should have_title('SPCA') }

    it { should have_content('fosterers') }


  end
end
