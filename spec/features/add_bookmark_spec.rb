feature 'add bookmark' do
  scenario 'add url to the database, displayed on webpage' do
    visit('/')
    fill_in "add_bookmark_url", with: "http://taran.co.uk"
    fill_in "add_bookmark_title", with: "Tarans website"
    click_on("Add Bookmark")
    expect(page).to have_content "http://taran.co.uk"
    expect(page).to have_content "Tarans website"
  end

end
