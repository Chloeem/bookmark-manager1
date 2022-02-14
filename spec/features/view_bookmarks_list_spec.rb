feature 'users can view bookmarks' do
  scenario 'users can see a list of all bookmarks' do
    visit('/')
    click_button 'View bookmarks'
    expect(page).to have_content 'www.makers.tech'
  end
end