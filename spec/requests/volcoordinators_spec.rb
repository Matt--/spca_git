require 'spec_helper'

describe "Volcoordinators" do
  describe "Index page" do
    it "should have the content 'Volunteer Coordinators'" do
     
      visit '/volcoordinators'
      expect(page).to have_content('Volunteer Coordinators')
    end
  end
end
