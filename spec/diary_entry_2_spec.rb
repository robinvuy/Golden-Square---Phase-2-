require "diary_entry_2"

RSpec.describe DiaryEntry do
  it "constructs" do
    diary_entry = DiaryEntry.new("Title 1", "Contents 1")
    expect(diary_entry.title).to eq "Title 1"
    expect(diary_entry.contents).to eq "Contents 1"
  end

  describe "#count_words" do
    context "given added entries" do
      it "counts and returns number of words in contents" do
        diary_entry =  DiaryEntry.new("Title 1", "My contents 1")
        result = diary_entry.count_words
        expect(result).to eq 3
      end
    end
  end

  context "given empty contents" do
    it "returns 0" do
      diary_entry =  DiaryEntry.new("Title 1", "")
      result = diary_entry.count_words
      expect(result).to eq 0
    end
  end

  describe "#reading_time" do
    context "given empty contents" do
      it "fails is wpm is 0" do
        diary_entry =  DiaryEntry.new("Title 1", "shiver me timbers")
        diary_entry.count_words
        expect { diary_entry.reading_time(0) }.to raise_error "wpm must be above 0"
      end
    end
      
      
      it "returns 0 if contents are empty" do
        diary_entry =  DiaryEntry.new("Title 1", "")
        diary_entry.count_words
        expect(diary_entry.reading_time(2)).to eq 0
      end 

    context "given 1 entry" do
      it "returns reading time for entry" do
        diary_entry =  DiaryEntry.new("Title 1", "This is my new contents")
        diary_entry.count_words
        expect(diary_entry.reading_time(2)).to eq 3
      end 
    end

  end

end