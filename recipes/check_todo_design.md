{{PROBLEM}} Method Design Recipe
1. Describe the Problem
>As a user
>So that I can keep track of my tasks
>I want to check if a text includes the string #TODO.

2. Design the Method Signature

check_todo = todo_checker(text)

# text: string containing words
# check_todo = boolean value that verifies if #todo is contained in text (true if #todo is present, fail if otherwise)

3. Create Examples as Tests

#1 
todo_checker("") => fail "Not a sentence"

#2
todo_checker("#todo") => true


#3
todo_checker("#todo I love using github") => true


#4
todo_checker("I love using github") => false

#5
todo_checker("") => true

4. Implement the Behaviour