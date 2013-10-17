require 'spec_helper'

describe "StaticPages" do
  
  describe "home page" do
    it "should have the content 'home'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end
  
  describe "help" do
    it "should have the content 'help'" do
      visit '/static_pages/help'
      expect(page).to have_content('help')
    end
    it "should have the title 'help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "about" do
    it "should have the content 'about'" do
      visit '/static_pages/about'
      expect(page).to have_content('about')
    end
    it "should have the title 'about'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
    end
  end

  describe "contact" do
    it "should have the content 'contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('contact')
    end
    it "should have the title 'contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end
  
end
