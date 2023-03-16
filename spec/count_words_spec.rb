require "count_words"

RSpec.describe "count words method" do
  it "returns the number of words in string" do
    result = count_words("shiver me timbers")
    expect(result).to eq 3
  end
  
  context "when no string is entered" do
    it "fails" do 
      expect {count_words("")}.to raise_error "no string entered!"
    end
  end
end
