require "diary_entry" 

RSpec.describe DiaryEntry do
  it "recieves a title and contents, and provides wpm, reading time and reading chunk" do
    diary_entry = DiaryEntry.new("Coding for dummies", "Step 1, get a computer")
    diary_entry.title
    diary_entry.contents
    diary_entry.count_words(contents)
    diary_entry.reading_time(x)
    expect(diary_entry.reading_chunk).to eq "Step 1, get a computer"
  end
end