require 'spec_helper'

describe "User Pages" do

  subject { page }

  describe "profile page" do
      let(:user) { FactoryGirl.create(:user) }
      before { visit user_path(user) }

      it { should have_content(user.name) }
      it { should have_title(user.name) }
    end

  describe "signup pages" do
  	before { visit signup_path }

  	it { should have_content('Sign Up') }
  	it { should have_title(full_title('Sign Up')) }
    #it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      # get user_pages_index_path
      # response.status.should be(200)

  describe "signup" do

    before { visit signup_path }

    let(:submit) { "Create My Account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      # let(:user) { FactoryGirl.build(:user) }
      before do
        fill_in "Name",         with: "Example User"
        fill_in "Email",        with: "user@example.com"
        fill_in "Password",     with: "foobar"
        fill_in "Confirmation", with: "foobar"
        click_button "Create My Account"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
end
end

