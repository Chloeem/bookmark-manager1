require_relative '../lib/bookmark.rb'

describe Bookmark do
  subject(:bookmarks) { described_class.new }

  it { is_expected.to respond_to(:show_list) }

  it 'returns a list of saved bookmarks' do
    expect(bookmarks.show_list).to eq 'www.makers.tech, www.google.com, www.amazon.com'
  end
end
