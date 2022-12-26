require 'diary'
require 'diary_entry'

RSpec.describe 'diary' do
  context "the diary" do
    it "is initially empty" do
     diary = Diary.new
     expect(diary.list).to eq []
  end

    it "counts the words of all entries" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("day one", "november first")
    entry_2 = DiaryEntry.new("day two", "november second")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.count_words).to eq 4
  end
end
end


