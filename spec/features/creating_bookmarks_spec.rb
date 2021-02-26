
feature 'creating bookmarks' do
  scenario 'A user adds bookmarks manually' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.randomurl.com')
    click_button('Submit') 
    expect(page).to have_content 'http://www.randomurl.com'
  end
end