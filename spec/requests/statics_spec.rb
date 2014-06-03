require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit home_path }

    it { should have_content('Radius Health') }
    it { should have_title(full_title('Home')) }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end
end
# DEFAULT
# require 'spec_helper'

# describe "Statics" do
#   describe "GET /statics" do
#     it "works! (now write some real specs)" do
#       # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#       get statics_path
#       response.status.should be(200)
#     end
#   end
# end
