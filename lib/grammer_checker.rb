def grammer_checker(text)
  fail "Not a sentence" if text == ""
  first_letter_is_capital = text[0] == text[0].upcase
  last_character_is_punctuation_mark = [".","?","!"].include? text[-1] 
  if first_letter_is_capital && last_character_is_punctuation_mark  
  return true
  else
    return false
  end
end
  
puts grammer_checker("I like to code!")
  
  
  
  
  

