require "letter_counter"

RSpec.describe LetterCounter do
  it "return empty string" do
    counter = LetterCounter.new("")
    result = counter.calculate_most_common()
    expect(result).to eq ["", ""]
  end
end