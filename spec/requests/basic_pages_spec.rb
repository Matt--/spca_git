require 'spec_helper'

describe "Basic pages" do

  describe "Home page" do

    it "should have the content 'SPCA'" do
      visit '/home/index'
      page.should have_content('SPCA')
    end
  end






end

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
