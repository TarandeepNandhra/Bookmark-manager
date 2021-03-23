feature 'add bookmark' do
  scenario 'add url then show in the list' do
    visit('/')
    fill_in "add_bookmark_field", with: "http://taran.co.uk"
    click_on("Add Bookmark")
    click_on("View Bookmarks")
    expect(page).to have_content "http://taran.co.uk"
  end

end
