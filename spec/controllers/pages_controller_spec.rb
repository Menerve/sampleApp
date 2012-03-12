require 'spec_helper'

describe PagesController do
  render_views
  
  before(:each) do
    @baseTitle = "Sample Ror app"
  
  end
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "must have good title" do
        get 'home'
        response.should have_selector("title", :content => @baseTitle + " | Home")
    end
    
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "must have good title" do
        get 'contact'
        response.should have_selector("title", :content => @baseTitle + " | Contact")
    end
  end
  
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "must have good title" do
        get 'about'
        response.should have_selector("title", :content => @baseTitle + " | About")
    end
  end
  
  describe "GET 'help'" do
    it "should be successful" do
        get 'help'
        response.should be_success
    end
    it "must have good title" do
        get 'help'
        response.should have_selector("title", :content => @baseTitle + " | Help")
    end
  end
end
