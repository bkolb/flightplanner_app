require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Flugplanung') }
    it { should have_title(full_title('')) }
    it {should_not have_title(" | Home") }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Hilfe') }
    it { should have_title(full_title('Hilfe')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('Über uns') }
    it { should have_title(full_title('Über uns')) }
  end

  describe "About page" do
    before { visit contactus_path }

    it { should have_content('Kontakt zu uns') }
    it { should have_title(full_title('Kontakt zu uns')) }
  end

end
