{{PROBLEM}} Method Design Recipe
1. Describe the Problem
# As a user
# So that I can improve my grammar
# I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.


2. Design the Method Signature

proper_grammer = grammer_checker(text)

# text: string containing words
# proper_grammer: boolean value (true/false), true if grammer is good, false if otherwise

3. Create Examples as Tests

#1 
grammer_checker("") => fail "Not a sentence"

#2
grammer_checker("I like code.") => true


#3
grammer_checker("I like code") => false


#4
grammer_checker("i like code.") => false

#5
grammer_checker("I am good at coding?") => true

#6
grammer_checker("I like code!") => true

#7
grammer_checker("I like code,") => false

4. Implement the Behaviour




