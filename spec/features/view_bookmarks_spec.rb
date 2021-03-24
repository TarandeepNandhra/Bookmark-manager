feature 'View List of Bookmarks' do
  scenario 'it displays a list of bookmarks' do
    visit '/'
    expect(page).to have_content 'These are my Bookmarks...Behold them!'
    # regex to include the string 'Ruby-Doc'
    expect(page).to have_content(/Ruby-Doc/i)
  end
end