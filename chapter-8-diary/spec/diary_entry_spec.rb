require 'diary_entry'

RSpec.describe do
  context "creates" do
    it "a diary entry" do
      entry = DiaryEntry.new("the title", "the contents")
      expect(entry.title).to eq "the title"
      expect(entry.contents).to eq "the contents"
    end

    it "counts the words in the contents of the diary entry" do
      entry = DiaryEntry.new("the title", "the contents")
      expect(entry.count_words).to eq 2
    end

    it "returns zero if there are no contents" do
      entry = DiaryEntry.new("the title", "")
      expect(entry.count_words).to eq 0
    end

    it "returns the reading time if one word" do
      entry = DiaryEntry.new("the title", "the")
      expect(entry.reading_time(2)).to eq 1
    end

    it "returns the reading time if five words" do
      entry = DiaryEntry.new("the title", "one two three four five")
      expect(entry.reading_time(2)).to eq 3
    end

    it "fails if wpm is zero" do
      entry = DiaryEntry.new("the title", "one two three four five")
      expect { entry.reading_time(0) }.to raise_error "WPM must be a positive number!"
    end
  end
  end
