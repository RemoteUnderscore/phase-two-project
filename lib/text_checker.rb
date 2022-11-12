def text_checker(text)
    first_char = text[0]
    last_char = text[-1]
    valid_punctuation = [".", "!", "?"]
    if text == ""
      return false
    elsif (first_char == first_char.upcase) && (valid_punctuation.include?(last_char))
      return true
    else
      return false
  end
end


valid_punctuation = [".", "!", "?"]