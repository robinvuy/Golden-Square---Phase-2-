require "reading_time_estimator"

RSpec.describe "estimate reading time method" do
  context "given an empty string" do
    it "returns 0" do
      result = estimating_reading_time("")
      expect(result).to eq 0
    end
  end

  context "given a 5 word string" do
    it "returns 1" do
      result = estimating_reading_time("apples and oranges are cool")
      expect(result).to eq 1
    end
  end

  context "given a 100 word string or smaller" do
    it "returns 1" do
      result = estimating_reading_time("hi " * 90)
      expect(result).to eq 1
    end
  end

  context "given a 200 word string" do
    it "returns 1" do
      result = estimating_reading_time("hi " * 200)
      expect(result).to eq 1
    end
  end

  context "given a 300 word string" do
    it "returns 2" do
      result = estimating_reading_time("hi " * 300)
      expect(result).to eq 2
    end
  end

  context "given a 400 word string" do
    it "returns 2" do
      result = estimating_reading_time("hi " * 400)
      expect(result).to eq 2
    end
  end

  context "given a 1000 word string" do
    it "returns 5" do
      result = estimating_reading_time("hi " * 1000)
      expect(result).to eq 5
    end
  end

  context "given a 4000 word string" do
    it "returns 20" do
      result = estimating_reading_time("hi " * 4000)
      expect(result).to eq 20
    end
  end
end