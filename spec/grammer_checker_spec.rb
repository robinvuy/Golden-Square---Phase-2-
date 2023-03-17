require "grammer_checker"

RSpec.describe "grammer checker method" do
  context "given an empty string" do
    it "fails" do
      expect{ grammer_checker("") }.to raise_error "Not a sentence"
    end
  end
  
  context "given a string starting with capital letter and ending with fullstop" do
    it "returns true" do
      result = grammer_checker("I like code.")
      expect(result).to eq true
    end
  end
  
  context "given a string only starting with a capital letter" do
    it "returns false" do 
      result = grammer_checker("I like code")
      expect(result).to eq false
    end
  end
  
  context "given a string only ending with fullstop" do
    it "returns false " do
      result = grammer_checker("i like code.")
      expect(result).to eq false
    end
  end
  
  context "given a string starting with capital letter and ending with question mark" do
    it "returns true" do
      result = grammer_checker("I am good at coding?")
      expect(result).to eq true 
    end
  end   

  context "given a string starting with capital letter and ending with !" do
    it "returns true" do
      result = grammer_checker("I like code!")
      expect(result).to eq true
    end
  end

  context "given a string starting with capital letter and ending with ," do
    it "returns false" do
      result = grammer_checker("I like code,")
      expect(result).to eq false
    end
  end
end
