feature 'users can view bookmarks' do
  scenario 'users can see a list of all bookmarks' do
    visit('/')
    click_button 'View bookmarks'
    expect(page).to have_content ['http://www.makersacademy.com/', 'http://www.google.com/', 'http://www.destroyallsoftware.com/']

  end
end
