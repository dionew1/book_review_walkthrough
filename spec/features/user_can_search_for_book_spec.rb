require 'rails_helper'

describe 'user can search for book' do
  it 'and displays book info' do
    visit root_path

    fill_in :title, with: 'Normal People'
    click_on 'Find Book'

    expect(current_path).to eq(search_path)
    expect(page).to have_content("Normal People")
    expect(page).to have_content("Sally Rooney")
    expect(page).to have_content("No Genres Listed")
    expect(page).to have_css('.review', count: 2)
    expect(page).to have_css('.pub-date', count: 2)
  end
end