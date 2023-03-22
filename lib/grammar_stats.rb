class GrammarStats
  def initialize
    @successful_counter = 0
    @text_counter = 0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    @text = text
    fail "Not a sentence" if @text == ""
    first_letter_is_capital = @text[0] == @text[0].upcase
    last_character_is_punctuation_mark = [".","?","!"].include? @text[-1] 
    if first_letter_is_capital && last_character_is_punctuation_mark  
    return true
    else
      return false
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    if check(@text) == true  
      @succesful_counter += 1 
      @text_counter += 1
      return (@successful_counter / @text_counter) * 100 
    else check(@text) == false
      @text_counter += 1
      return (@successful_counter / @text_counter) * 100 
    end
  end 
end

grammar = GrammarStats.new
puts grammar.check("Correct.")
puts grammar.percentage_good