require "personal_diary"

RSpec.describe "make snippet method" do
  it "returns string if it contains 4 or less words" do
    result = make_snippet("i went to bank")
    expect(result).to eq "i went to bank"
  end  
  it "adds ... onto end of string if it contains 5 words or more" do
    result = make_snippet("I got accepted into makers yay")
    expect(result).to eq "I got accepted into makers..."  
  end
end