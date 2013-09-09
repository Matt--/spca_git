require 'spec_helper'

describe HelpController do

  describe "GET 'volunteer'" do
    it "returns http success" do
      get 'volunteer'
      response.should be_success
    end
  end

  describe "GET 'foster'" do
    it "returns http success" do
      get 'foster'
      response.should be_success
    end
  end

  describe "GET 'coordinator'" do
    it "returns http success" do
      get 'coordinator'
      response.should be_success
    end
  end

end
