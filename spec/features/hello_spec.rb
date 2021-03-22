feature 'hello' do
  scenario 'it says hello' do
    visit '/'
    expect(page).to have_content 'Hello!'
  end
end