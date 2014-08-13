require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1', text: 'Anmelden') }
    it { should have_title(full_title('Anmelden')) }
  end

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    # Replace with code to make a user variable
    before { visit user_path(user) }

    it { should have_content(user.name) }
    it { should have_title(full_title(user.name)) }
  end

  describe "signup" do

    before { visit signup_path }

    let(:submit) { "Meinen Account anlegen" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",         with: "Example User"
        fill_in "Email",        with: "user@example.com"
        fill_in "Password",     with: "foobar1234"
        fill_in "Wiederholung", with: "foobar1234"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
end