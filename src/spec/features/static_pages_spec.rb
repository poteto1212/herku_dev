require 'rails_helper'
#テンプレートに含まれる文字をテストしたいときに書く
describe 'Home' do
  specify '画面の表示' do
    visit '/static_pages/home'
    expect(page).to have_css('h1', text: 'Sample App')
    expect(page).to have_css('title',text: "Home | Ruby on Rails Tutorial Sample App")
  end
end

describe 'Help' do
  specify '画面の表示' do
    visit '/static_pages/help'
    expect(page).to have_css('h1', text: 'Help')
    expect(page).to  have_css('title',text: "Help | Ruby on Rails Tutorial Sample App")
  end
end

describe 'About' do
  specify '画面の表示' do
    visit '/static_pages/about'
    expect(page).to have_css('h1', text: 'About')
    expect(page).to  have_css('title',text: "About | Ruby on Rails Tutorial Sample App")
  end
end
