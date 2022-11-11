def get_most_common_letter(text)
  counter = Hash.new(0)
  text = text.split(" ").join
  text.chars.each do |char|
    counter[char] += 1
  end
  puts counter.to_a.sort_by { |k, v| v }[-1][0]
  p counter.to_a.sort_by { |k, v| v }[-1][0]
end

#get_most_common_letter("the roof, the roof, the roof is on fire!")
get_most_common_letter("iuddmnuoofftrarffooffff")
# get_most_common_letter("Once upon a toom")

# using 'p' I managed to establish that the process was counting spaces
# as well letters - I used split and join to remove them and then return
# the last (and most numerous) letter by changing the index from [0] to [-1]