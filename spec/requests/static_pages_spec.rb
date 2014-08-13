require 'spec_helper'

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(title)) }
  end

  describe "Home page" do
    before { visit root_path }

    let(:title) { '' }
    let(:heading) { 'Flightplanning' }

    it_should_behave_like "all static pages"
    it {should_not have_title(" | Home") }
  end

  describe "Help page" do
    before { visit help_path }

    let(:title) { 'Help' }
    let(:heading) { 'Help' }

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path }

    let(:title) { 'About' }
    let(:heading) { 'About' }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit contactus_path }

    let(:title) { 'Contact' }
    let(:heading) { 'Contact' }

    it_should_behave_like "all static pages"
  end


  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Home"
    click_link "Sign Up"
    expect(page).to have_title(full_title('Sign Up'))
  end

end
