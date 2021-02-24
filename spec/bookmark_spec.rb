require './lib/bookmark'
=begin
describe Bookmark do
    describe '#all' do 
      it 'returns bookmarks' do 
        #test
        connection = PG.connect(dbname: 'bookmark_manager_test')
        
        connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
        connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
        connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

        visit('/bookmarks')

        expect(bookmarks).to include('http://www.makersacademy.com')
        expect(bookmarks).to include('http://www.destroyallsoftware.com')
        expect(bookmarks).to include('http://www.google.com')
      end
    end  
end

=end