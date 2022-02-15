require 'pg'
class Bookmark

  attr_reader :list_bookmarks

  def initialize
    @list_bookmarks = ['www.makers.tech', 'www.google.com', 'www.amazon.com']
  end

  def show_list
    connection = PG.connect(dbname: 'bookmarkmanager')
    result = connection.exec('SELECT * FROM bookmarks;')
    result.map { |bookmark| bookmark['url'] }
    #list_bookmarks.join(', ')
  end
end
