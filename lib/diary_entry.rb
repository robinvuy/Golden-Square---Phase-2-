class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
  end

  def title
    # Returns the title as a string
    return @title
  end

  def contents
    # Returns the contents as a string
    return @contents
  end

  def count_words
    # Returns the number of words in the contents as an integer
    return @contents.split(" ").length
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
    fail "wpm must be above 0" unless wpm > 0
    return (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    #if @word_count <= (@wpm/minutes)
      #return @contents
    #elsif @word_count > (@wpm/minutes)
      #@wordindex = @word_count/(@wpm/minutes)
     # return "#{@contents[0]}..#{@contents[@wordindex]}"
    #end
  
  end
end

#diary = DiaryEntry.new("cool", "hi " * 400)
#puts diary.title
#puts diary.contents
#puts diary.count_words
#puts diary.reading_time(200)
#puts diary.reading_chunk(200, 1)
