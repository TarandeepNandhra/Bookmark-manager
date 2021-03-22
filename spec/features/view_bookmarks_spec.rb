feature 'View List of Bookmarks' do
  scenario 'it displays a list of bookmarks' do
    visit '/'
    click_on 'View Bookmarks'
    expect(page).to have_content 'These are my Bookmarks...Behold them!'
    expect(page).to have_content 'Ruby-Doc'
  end
end