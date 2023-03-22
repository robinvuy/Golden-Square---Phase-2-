require "diary_entry" 

RSpec.describe DiaryEntry do
  it "returns title and contents strings" do
    diary_entry = DiaryEntry.new("Coding for dummies", "Step 1, get a computer")
    expect(diary_entry.title).to eq "Coding for dummies"
    expect(diary_entry.contents).to eq "Step 1, get a computer"
  end

  describe "#count words" do
    it "returns number of words in contents as integer" do
      diary_entry = DiaryEntry.new("Coding for dummies", "Step 1, get a computer")
      expect(diary_entry.count_words).to eq 5
  end

    it "returns 0 for an empty string" do
      diary_entry = DiaryEntry.new("Coding for dummies", "")
      expect(diary_entry.count_words).to eq 0
    end
  end

  describe "#reading_time" do
    context "given a wpm of 200" do
      it "returns number of words in contents as integer" do
        diary_entry = DiaryEntry.new("Coding for dummies", "one " * 550 )
        expect(diary_entry.reading_time(200)).to eq 3
      end
    end
    
    context "given a wpm of 0" do
      it "fails" do
        diary_entry = DiaryEntry.new("Coding for dummies", "one " * 550 )
        expect { diary_entry.reading_time(0) }.to raise_error "wpm must be above 0"   
      end
    end
  end

  describe "#reading_chunk" do
    context "with a contents unreadable within the time" do
      it "return chunk of contents that can be read within minutes according to wpm" do
        diary_entry = DiaryEntry.new("Coding for dummies", "one two three")
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "one two"
      end

      it "returns the next chunk, next time we are asked" do
        diary_entry = DiaryEntry.new("Coding for dummies", "one two three")
        diary_entry.reading_chunk(2, 1)
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "three"
      end
    end
  
  
  end
  
end