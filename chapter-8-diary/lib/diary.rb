class Diary
  def initialize
    @entries = []

  end

  def add(entry) 
    @entries << entry
  end

  def all
    return @entries
  end

  def count_words
    return @entries.sum(&:count_words)
  end

  def reading_time(wpm)
    fail "WPM must be a positive number!" unless wpm.positive?
    return (count_words.to_f / wpm.to_f).ceil
    end
   
  def find_best_entry_for_reading_time(wpm, minutes)
    readable_entries = @entries.filter do |entry|
      entry.reading_time(wpm) <= minutes
    end
    sorted_by_longest = readable_entries.sort_by do |entry|
      entry.count_words
    end
    return sorted_by_longest.last
  end
end