feature 'Delete bookmark' do
  scenario 'Can use the delete button to delete the bookmark' do
    visit('/')
    # data value with id = 1 in test database: 1 | ruby | https://ruby-doc.org/
    expect(page).to have_link('ruby', href: 'https://ruby-doc.org/')
    first('.bookmark').click_button 'Delete'
    expect(page).not_to have_link('ruby', href: 'https://ruby-doc.org/')
  end
end