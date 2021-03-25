feature 'Update bookmark' do
  scenario "A bookmark's title and url is updated, current values shown on update page" do
    visit('/')
    # data value with id = 1 in test database: 
    # 1 | ruby | https://ruby-doc.org/
    first('.bookmark').click_button('Update')
    expect(page).to have_content "ruby"
    expect(page).to have_content "https://ruby-doc.org/"
    fill_in "update_bookmark_url", with: "http://taran.co.uk"
    fill_in "update_bookmark_title", with: "Tarans website"
    click_on("Update Bookmark")
    expect(page).to have_content "Tarans website"
    expect(page).not_to have_link('ruby', href: 'https://ruby-doc.org/')
    expect(page).to have_link('Tarans website', href: 'http://taran.co.uk')
  end
end