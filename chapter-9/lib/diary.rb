class Diary
  def initialize
    @entries = []
  end

  def add(entry)
    @entries << entry
  end

  def list
    return @entries
  end

  def count_words
    @entries.sum(&:count_words)
  end
  
  def reading_time(wpm)
    reading_time = (count_words.to_f / wpm.to_f).ceil
  end

end 