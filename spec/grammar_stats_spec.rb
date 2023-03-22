require "grammar_stats"

RSpec.describe GrammarStats do
  context "given correct string" do
    it "returns true" do 
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("Correct.")).to eq true
    end
  end

  it "returns percentage" do 
    grammar_stats = GrammarStats.new
    grammar_stats.check("Correct.")
    expect(grammar_stats.percentage_good).to eq 100  
  end 

  it 'returns false' do 
    grammar_stats = GrammarStats.new
    grammar_stats.check("i like apples")
    expect(grammar_stats.percentage_good).to eq 0   
    end 






end


  