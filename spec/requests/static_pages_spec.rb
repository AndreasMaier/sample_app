require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it 'should have the base title' do
      visit '/static_pages/home'
      page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App")
    end

    it 'should not have the right title "Home"' do
      visit '/static_pages/home'
      page.should_not have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe 'Help Page' do
    it 'should have content "Help"' do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the right title 'Help" do
      visit '/static_pages/help'
      page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App | Help")
    end

  end

  describe 'About Page' do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the right title 'About Us" do
      visit '/static_pages/about'
      page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end
