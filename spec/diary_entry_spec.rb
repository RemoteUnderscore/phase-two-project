require 'diary_entry'

RSpec.describe DiaryEntry do
  it "checks the title and contents of the text" do
    diary_entry = DiaryEntry.new("book", "book_words")
    expect(diary_entry.contents).to eq "book_words"
    expect(diary_entry.title).to eq "book"
  end

  describe 'count_words' do
    it "returns the number of words in the contents" do
      diary_entry = DiaryEntry.new("book", "the words in the book")
      expect(diary_entry.count_words).to eq 5
    end

    it "returns 0 if the number of words in the contents is 0" do
      diary_entry = DiaryEntry.new("book", "")
      expect(diary_entry.count_words).to eq 0
    end
 
  describe 'reading_time' do
    it "returns the ceiling of number of mins to read contents" do
      diary_entry = DiaryEntry.new("book", "one " * 550)
      expect(diary_entry.reading_time(200)).to eq 3
    end

    it "returns the ceiling of number of mins to read contents" do
      diary_entry = DiaryEntry.new("book", "one " * 1000)
      expect(diary_entry.reading_time(200)).to eq 5
    end

  describe 'reading_chunk' do
    it "returns the first chunk of text based on wpm and time" do
      #diary_entry = DiaryEntry.new("book", (("one " * 400) + ("two " * 200)))
      diary_entry = DiaryEntry.new("book", "one two three four five")
      diary_entry.reading_chunk(2, 1)
      expect(diary_entry.reading_chunk(1, 1)).to eq "three" 
    end 
  end

end
end
end

# describe 'reading_chunk' do
#  it "returns the first chunk of text based on wpm and time" do
#    diary_entry = DiaryEntry.new("book", "one " * 1000)
#    expect(diary_entry.reading_chunk(200, 2)).to eq ("one " * 400).chop 
#  end