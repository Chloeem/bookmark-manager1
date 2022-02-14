feature 'testing infrastructure' do
  scenario 'visits the home page' do
    visit('/')
    expect(page).to have_content 'Hello, world'
  end
end