require "diary"
require "diary_entry_2"

RSpec.describe "integration" do
    it "lists out the entries added" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Title 1", "My contents 1")
      diary_entry_2 = DiaryEntry.new("Title 2", "My contents 2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      result = diary.all
      expect(result).to eq [diary_entry_1, diary_entry_2]
    end
  
    describe "word counting behaviour" do
      it "counts all words in all diary entries' contents" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("Title 1", "My contents 1")
        diary_entry_2 = DiaryEntry.new("Title 2", "My contents 2")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        result = diary.count_words
        expect(result).to eq 6
      end
    end
    
    describe "reading time behaviour" do
      it "fails when wpm is 0" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("Title 1", "My contents now")
        diary_entry_2 = DiaryEntry.new("Title 2", "My contents then")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect { diary.reading_time(0) }.to raise_error("WPM must be above 0")
      end
      
      
      it "calculates the reading time for all diary entries" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("Title 1", "My contents now")
        diary_entry_2 = DiaryEntry.new("Title 2", "My contents then")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect(diary.reading_time(2)).to eq 3
      end
    end
    
    describe "best reading time behaviour" do
      context "we have only one entry that is readible in given minutes" do
        it "returns entry"
        


end