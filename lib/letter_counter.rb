# File: letter_counter.rb

class LetterCounter
  def initialize(text)
    @text = text
  end

  def calculate_most_common()
    counter = Hash.new(0)

    most_common = ""
    most_common_count = 0
    @text.chars.each do |char|
      #binding.irb
      next unless is_letter?(char)
      #binding.irb
      counter[char] = (counter[char] || 1 ) + 1
      #binding.irb
      if counter[char] > most_common_count
        #binding.irb
        most_common = char
        #binding.irb
        most_common_count = counter[char]
        #binding.irb      
      end
    end
    return [most_common_count, most_common]
  end

  private

  def is_letter?(letter)
    return letter =~ /[a-z]/i
  end
end

counter = LetterCounter.new("Digital Punk")
p counter.calculate_most_common

# Intended output:
# [2, "i"]

