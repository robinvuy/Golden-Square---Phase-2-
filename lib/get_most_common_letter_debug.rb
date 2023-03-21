def get_most_common_letter(text)
  counter = Hash.new(0)    #making new hash for counter, starting at 0
  text.chars.each do |char|  #iterating over text arguement for each character
    counter[char] += 1       #adding 1 to counter for each character that pops up
  end
  counter.to_a.sort_by { |k, v| [-v, k] }[1][0]   #turning counter into an array and sorting it by most common letter
end

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"

puts get_most_common_letter("the roof, the roof, the roof is on fire!")

