class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @start_point = 0
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
    return (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    @words_read = (wpm * minutes)
    @split_words = @contents.split(" ")
    chunk = @split_words[@start_point...@start_point + @words_read]
    @start_point += @words_read   # return (wpm * minutes)
    return chunk.join(" ")
    
    
  end
end

