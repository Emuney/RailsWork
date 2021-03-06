require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "signin page" do
    before { visit signin_path }

    it { should have_content('Sign In') }
    it { should have_title('Sign In') }

  end
end

	describe "signin" do

	before { visit signin_path }

	describe "with invalid information" do
	  before { click_button "Sign In" }

	  it { should have_title('Sign In') }
	  it { should have_selector('div.alert.alert-error') }

	  describe "after visiting another page" do
	    before { click_link }
	    it { should_not have_selector('div.alert.alert-error') }

	    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Email",    with: user.email.upcase
        fill_in "Password", with: user.password
        click_button "Sign In"
      end

      it { should have_title(user.name) }
      it { should have_link('Profile',     href: user_path(user)) }
      it { should have_link('Sign Out',    href: signout_path) }
      it { should_not have_link('Sign In', href: signin_path) }
    
    	describe "followed by signout" do
        before { click_link "Sign Out" }
        it { should have_link('Sign In') }
      end
    end
	 end
	end
end