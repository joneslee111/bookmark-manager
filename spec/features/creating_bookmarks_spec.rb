
feature 'creating bookmarks' do
  scenario 'A user adds bookmarks manually' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.randomurl.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Submit') 
    
    expect(page).to have_link('Test Bookmark', href: 'http://www.randomurl.com')
  end
end