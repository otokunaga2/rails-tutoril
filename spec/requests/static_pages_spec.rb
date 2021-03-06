require 'spec_helper'
describe "Static pages" do
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_content(heading)}
    it { should have_title(full_title(page_title))}
  end

  describe "Home page" do
    before {visit root_path}
    let(:heading) {'Sample App'}
    let(:page_title){''}

    it_should_behave_like "all static pages"
    it { should_not have_title('|Home')}
  end
  describe "Help page" do

  end
  describe "About page" do

  end
  describe "Conent page" do

  end
end

#RSpec.describe "StaticPages", type: :request do
#  #describe "GET /static_pages" do
#  #  it "works! (now write some real specs)" do
#  #    get static_pages_index_path
#  #    expect(response).to have_http_status(200)
#  #  end
#  #end
#  let(:title_string) {'Ruby on Rails Tutorial Sample App'}
#ruby on rails tutorial sample app 
#
#  describe "Home page" do
#    it "should have the conent 'Sample App'" do
#      visit '/static_pages/home'
#      expect(page).to have_title("#{title_string}| home")
#    end
#  end
#  describe "Help page" do
#    it "should have the conent 'Help'" do
#      visit '/static_pages/help'
#      expect(page).to have_title("| Help")
#    end
#  end
#  describe "About page" do
#    it "should have the content 'About Us'" do
#      visit '/static_pages/about'
#      expect(page).to have_content('About Us')
#    end
#
#    it "should have the title 'About Us'" do
#      visit '/static_pages/about'
#      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
#
#    end
#  end
#  describe "Contact page" do
#    it "should have the ceontent 'Contact'" do
#       visit '/static_pages/contact'
#       expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
#    end
#  end
