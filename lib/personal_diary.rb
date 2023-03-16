def make_snippet(string)
  if string.count(" ") <= 3
    return string
  elsif
    string.count(" ") > 3
    return string + "..."
  end
end

#puts make_snippet("I want to make a game")
puts make_snippet("I want a game")