require_relative '../lib/bookmarks.rb'

describe Bookmarks do
  subject(:bookmark) { described_class.new }

  it { is_expected.to respond_to(:show_list) }

  # it 'returns a list of saved bookmarks' do

  # end
end