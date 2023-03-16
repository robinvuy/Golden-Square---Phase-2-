def count_words(string)
  fail "no string entered!" if string.empty?
  sentence = string.split(" ")
  return sentence.length 
end

puts count_words("shiver me timbers ")
puts count_words("ello ello 12 878 jdgkh")