require "letter_counter"

RSpec.describe LetterCounter do
  it "return empty string" do
    counter = LetterCounter.new("")
    result = counter.calculate_most_common()
    expect(result).to eq [0, ""]
  end
 
  it "returns correct common letter and common letter count" do
    counter = LetterCounter.new("moot")
    result = counter.calculate_most_common()
    expect(result).to eq [2, "o"]
  end
 

end