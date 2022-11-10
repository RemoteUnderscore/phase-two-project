def make_snippet(str)
  text = str.split(" ")
  if text.length <= 5
    return str
  else
    five = text[0..4].join(" ")
    return five + "..."
  end
end