{{PROBLEM}} Method Design Recipe
1. Describe the Problem
> As a user
> So that I can manage my time
> I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

2. Design the Method Signature

reading_time = estimating_reading_time(text)

#text: string containing words
#reading_time: integer representing number of minutes

3. Create Examples as Tests

#1 
estimating_reading_time("") => 0

#2
estimating_reading_time(FIVE_WORDS) => 1

#3
estimating_reading_time(ONE_HUNDRED_WORDS) => 1

#4
estimating_reading_time(TWO_HUNDRED_WORDS) => 1

#5
estimating_reading_time(THREE_HUNDRED_WORDS) => 2

#6
estimating_reading_time(FOUR_HUNDRED_WORDS) => 2

#7
estimating_reading_time(ONE_THOUSAND_WORDS) => 5

#8
estimating_reading_time(FOUR_THOUSAND_WORDS) => 20

4. Implement the Behaviour




