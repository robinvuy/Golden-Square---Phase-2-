require "check_todo"

RSpec.describe "check todo method" do
  context "Given an empty string" do
    it "returns fail Not a sentence" do
      expect { todo_checker("") }.to raise_error "Not a sentence"
    end
  end

  context "Given a string containing just #todo" do
    it "returns true" do
      result = todo_checker("#todo")
      expect(result).to eq true
    end
  end

  context "Given a string containing #todo and other words" do
    it "returns true" do
      result = todo_checker("#todo I love using github")
      expect(result).to eq true
    end
  end

  context "Given a string containing only words" do
    it "returns false" do
      result = todo_checker("I love github")
      expect(result).to eq false
    end
  end


end