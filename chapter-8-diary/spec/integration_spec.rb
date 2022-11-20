require 'diary'
require 'diary_entry'

RSpec.describe 'integration' do
  context "after adding some entries" do
    it "lists out the entries added" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("title_1", "contents_1")
      entry_2 = DiaryEntry.new("title_2", "contents_2")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.all).to eq [entry_1, entry_2]
    end

  describe 'count_words' do
    it "counts the words in all diary entries" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("title_1", "contents_1")
      entry_2 = DiaryEntry.new("title_2", "contents_2")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.count_words).to eq 2
    end

  describe "reading time behaviour" do
    it "calculates the reading time using wpm" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("title_1", "one two")
      entry_2 = DiaryEntry.new("title_2", "one two")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.reading_time(2)).to eq 2
    end

    it "calculates the reading time using wpm with 5 words" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("title_1", "one two")
      entry_2 = DiaryEntry.new("title_2", "one two three")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.reading_time(2)).to eq 3
    end

    it "calculates the reading time using wpm with 13 words" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("title_1", "one two three four five six seven")
      entry_2 = DiaryEntry.new("title_2", "one two three four five six")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.reading_time(2)).to eq 7
    end

    it "fails when wpm is zero" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("title_1", "one two three four five six seven")
      diary.add(entry_1)
      expect { diary.reading_time(0) }.to raise_error ("WPM must be a positive number!")
    end

    describe "best reading entry" do
      context "where we have one entry and it is readable in the time" do
        it "returns the entry" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("title", "the contents")
        diary.add(entry_1)
        expect(diary.find_best_entry_for_reading_time(2,1)).to eq entry_1
      end
    end
  end
end
end
end
end