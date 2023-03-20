def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  puts "At the start key is #{cipher}"
  ciphertext_chars = plaintext.chars.map do |char|
    puts "Next plaintext line is #{plaintext.chars}"
    (65 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char].ord
  end
  return plaintext_chars.join
end

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
# error was we used "..." which doesn't include last letter i.e z, so instead we use ".."
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"

#puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
#puts encode("swift", "secretkey") #axnke

puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")