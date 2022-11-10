def text_checker(text)
    first_char = text[0]
    last_char = text[-1]
    if text == ""
      return false
    elsif first_char == first_char.upcase && last_char == "."
      return true
    else
      return false
  end
end