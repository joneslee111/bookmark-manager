feature 'visiting the homepage' do
    scenario 'the page title is visible' do
      visit '/'

      expect(page).to have_content 'Bookmark Manager'
    end
  end

feature 'Viewing Bookmarks' do

    scenario '#/bookmarks route' do
        visit('/bookmarks')
        expect(page).to have_content 'http://www.makersacademy.com'
        expect(page).to have_content 'http://www.destroyallsoftware.com'
        expect(page).to have_content 'http://www.google.com'
    end

end
