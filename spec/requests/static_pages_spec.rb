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
    let(:heading) { 'Flugplanung' }

    it_should_behave_like "all static pages"
    it {should_not have_title(" | Home") }
  end

  describe "Help page" do
    before { visit help_path }

    let(:title) { 'Hilfe' }
    let(:heading) { 'Hilfe' }

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path }

    let(:title) { 'Über uns' }
    let(:heading) { 'Über uns' }

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit contactus_path }

    let(:title) { 'Kontakt zu uns' }
    let(:heading) { 'Kontakt zu uns' }

    it_should_behave_like "all static pages"
  end


  it "should have the right links on the layout" do
    visit root_path
    click_link "Über uns"
    expect(page).to have_title(full_title('Über uns'))
    click_link "Hilfe"
    expect(page).to have_title(full_title('Hilfe'))
    click_link "Kontakt"
    expect(page).to have_title(full_title('Kontakt zu uns'))
    click_link "Home"
    click_link "Anmelden"
    expect(page).to have_title(full_title('Anmelden'))
  end

end
