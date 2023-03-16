def make_snippet(string)
  sentence = string.split(" ")
  if sentence.length <= 5
    return string
  else
    first_five_words = sentence[0,5].join(" ")
    return first_five_words + "..."
  end
end

#puts make_snippet("I want to make a game")
#puts make_snippet("I want a game")