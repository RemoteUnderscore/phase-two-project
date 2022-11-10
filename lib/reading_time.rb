def reading_time(text)

  count = text.split(" ").size
  return (count / 200.to_f).ceil

end

# if count == 0
#    return 0
#  elsif count <= 200
#    return 1
#  elsif count <= 400
#    return 2