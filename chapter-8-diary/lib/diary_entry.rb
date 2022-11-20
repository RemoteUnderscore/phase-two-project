class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return @contents.split(" ").length
  end

  def reading_time(wpm)
    fail "WPM must be a positive number!" unless wpm.positive?
    return (count_words.to_f / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    @words_read = (wpm * minutes)
    @split_words = @contents.split(" ")
    chunk = @split_words[@start_point...@start_point + @words_read]
    @start_point += @words_read   
    return chunk.join(" ")
  end
end
