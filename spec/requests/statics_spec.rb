require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Look At Me Now | Home")
    end
  end
end

describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/home'
      expect(page).to have_title("Look At Me Now | Help")
    end
  end
end

describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/home'
      expect(page).to have_title("Look At Me Now | About Us")
    end
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
