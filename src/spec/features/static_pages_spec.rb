require 'rails_helper'
#テンプレートに含まれる文字をテストしたいときに書く
RSpec.feature "static_pages",type: :feature do

  before do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  describe 'Home' do
    specify '画面の表示' do
      
      visit '/static_pages/home'
      expect(page).to have_css('h1', text: 'Welcome to the Sample App')
      expect(page).to have_title "Home | #{@base_title}"
    end
  end

  describe 'Help' do
    specify '画面の表示' do
      visit '/static_pages/help'
      expect(page).to have_css('h1', text: 'Help')
      expect(page).to  have_title "Help | #{@base_title}"
    end
  end

  describe 'About' do
    specify '画面の表示' do
      visit '/static_pages/about'
      expect(page).to have_css('h1', text: 'About')
      expect(page).to  have_title "About | #{@base_title}"
    end
  end
end