require 'diary_entry'

RSpec.describe 'diary_entry_spec' do
  context "" do
    it "constructs" do
      entry = DiaryEntry.new("day one", "november first")
      expect(entry).to eq (entry)
    end
  end

    it "counts the words of the contents" do
      entry = DiaryEntry.new("day one", "november first")
      expect(entry.count_words).to eq 2
    end
    
end