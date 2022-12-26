require 'diary'
require 'diary_entry'


RSpec.describe 'integration' do
  context "the diary" do
    it "is initially empty" do
    diary = Diary.new
    expect(diary.list).to eq []
    end
  end

    it "can have entries added to it" do
      diary = Diary.new
      entry = DiaryEntry.new("day one", "november first")
      diary.add(entry)
      expect(diary.list).to eq [entry]
    end

    it "can have multiple entries added to it" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("day one", "november first")
      entry_2 = DiaryEntry.new("day two", "november second")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.list).to eq [entry_1, entry_2]
    end

    it "counts the words in the contents" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("day one", "november first")
      entry_2 = DiaryEntry.new("day two", "november second")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.count_words).to eq 4
    end

    it "calculates the amount of time it wil take to read a given entry" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("day one", "november first")
      diary.add(entry_1)
      expect(diary.reading_time(2)).to eq 1
    end

    it "calculates the amount of time it wil take to read a given entry if five words" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("day one", "november first was")
      diary.add(entry_1)
      expect(diary.reading_time(2)).to eq 2
    end

end






