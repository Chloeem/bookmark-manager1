require_relative '../lib/bookmarks.rb'

describe Bookmarks do
  subject(:bookmark) { described_class.new }

  it { is_expected.to respond_to(:show_list) }

  it 'returns a list of saved bookmarks' do
    expect(bookmark.show_list).to eq 'www.makers.tech, www.google.com, www.amazon.com'
  end
end