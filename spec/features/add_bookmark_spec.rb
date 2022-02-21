feature 'Add new bookmark' do
  scenario 'User can add new bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit('/')
    click_button 'New bookmark'
    fill_in 'address', with: 'https://github.com'
    click_button 'Submit'

    connection.exec("INSERT INTO bookmarks VALUES(4, 'https://github.com');")

    visit('/')
    click_button 'View bookmarks'

    expect(page).to have_content 'https://github.com' # This works but it shows the new entry on a new page!
  end                         # Need to adjust the route so that it goes back to the main page and add in the logic
end