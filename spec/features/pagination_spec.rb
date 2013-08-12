require 'spec_helper'

feature 'pagination' do
  before do
    51.times { |i| create(:user_with_karma, :total => 200 + i, :points => 2)}
  end

  scenario 'user sees page links' do
    visit root_url
    find('.pagination').should have_link('1')
  end

  scenario 'user clicks next page from page 1' do
    visit root_url
    find('.pagination').click_link('Next')
    expect(page.find('.pagination li.active').text).to eq '2'
  end

  scenario 'user clicks prev page from page 1' do
    visit root_url
    expect(page).to have_link('Prev', href: '#')
  end

  scenario 'user clicks page number from page 1' do
    visit root_url
    find('.pagination').click_link('5')
    expect(page.find('.pagination li.active').text).to eq '5'
  end
end