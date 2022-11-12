class GrammarStats
  def initialize
    @text_checked = 0
    @text_passed = 0
  end

  def check(text)
    return false if text.empty?
      @text_checked += 1
    p @text_checked
      first_char = text[0]
      last_char = text[-1]
      valid_punctuation = [".", "?", "!"]
    if (first_char == first_char.upcase) && (valid_punctuation.include?(last_char)) 
      @text_passed += 1
      p @text_passed
      return true
    else
      return false
    end
  end

  def percentage_good
    percentage_good = @text_passed.to_f / @text_checked.to_f * 100
    return percentage_good.to_f.floor
  end
end

