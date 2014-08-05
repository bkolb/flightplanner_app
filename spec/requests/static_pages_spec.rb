require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Flugplanung')
    end
  end

  it "should have the right title" do
    visit '/static_pages/home'
    expect(page).to have_title("Flugplanung | Home")
  end




  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Hilfe')
    end
  end

  it "should have the right title" do
    visit '/static_pages/help'
    expect(page).to have_title("Flugplanung | Hilfe")
  end



  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('Über uns')
    end
  end

  it "should have the right title" do
    visit '/static_pages/about'
    expect(page).to have_title("Flugplanung | Über uns")
  end



  describe "Contact page" do

    it "should have the content 'Kontakt zu uns'" do
      visit '/static_pages/contactus'
      expect(page).to have_content('Kontakt zu uns')
    end
  end

  it "should have the right title" do
    visit '/static_pages/contactus'
    expect(page).to have_title("Flugplanung | Kontakt zu uns")
  end


end