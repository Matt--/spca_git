 require 'spec_helper'


describe "Home" do
  subject{ page }
  describe "Index page" do
    before { visit root_path }

    it { should have_title('SPCA') }
    it { should have_content('SPCA Volunteer Portal') }

  end
end


describe 'Volunteer' do
  
  describe 'saves thier application form' do


    describe 'sends a confirmation email' do
      before {visit volunteers_path }
    
      volunteer = Volunteer.new
      message = volunteer.test_email_confirmation_message
  
      test = 
          "    From: test from\n"+
          "    To: test to\n"+
          "    Subject: test header\n"+
          "    test content\n    \n"

      it 'should pass' do
        assert message[0..-1] == test[0..-1],
         "failed- message is length (" + message.length.to_s + ")...\n" + message + 
            "test is length (" + test.length.to_s() + ")...\n" + test
      end
    end
  end
end
