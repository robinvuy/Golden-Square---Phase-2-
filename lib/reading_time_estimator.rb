def estimating_reading_time(text)
  words = text.split(" ")
  return (words.length.to_f/200).ceil
end