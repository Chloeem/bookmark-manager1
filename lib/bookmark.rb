class Bookmark
  attr_reader :list_bookmarks

  def initialize
    @list_bookmarks = ['www.makers.tech', 'www.google.com', 'www.amazon.com']
  end

  def show_list
    list_bookmarks.join(', ')
  end
end
