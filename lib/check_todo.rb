def todo_checker(text)
  fail "Not a sentence" if text == ""
  if text.include? ("#todo")
    return true
  else 
    return false
  end
end

#puts todo_checker("")