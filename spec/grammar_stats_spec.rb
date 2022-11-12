require 'grammar_stats'

RSpec.describe GrammarStats do
  it "returns false with an empty string" do
    grammar_stats = GrammarStats.new
    result = grammar_stats.check("")
    expect(result).to eq false
  end

  it "returns true if there is a capital and correct punctuation" do
    grammar_stats = GrammarStats.new
    result = grammar_stats.check("Hey, how are you?")
    expect(result).to eq true
  end

  it "returns false if no capital letter" do
    grammar_stats = GrammarStats.new
    result = grammar_stats.check("hey, how are you?")
    expect(result).to eq false
  end

  it "returns 100 if one text out of one text is correct" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("Hey.")
    result = grammar_stats.percentage_good
    expect(result).to eq (100)
  end

  it "returns 50 if 50% of texts are correct" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("Hey")
    grammar_stats.check("Hey!")
    result = grammar_stats.percentage_good
    expect(result).to eq (50)
  end

  it "returns 25 if 25% of texts are correct" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey!")
    result = grammar_stats.percentage_good
    expect(result).to eq (25)
  end

  it "returns 33.33333333 if 33.333333333% of texts are correct" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey!")
    result = grammar_stats.percentage_good
    expect(result).to eq (33)
  end

  it "returns 2 if 2% of texts are correct" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey")
    grammar_stats.check("Hey!")
    result = grammar_stats.percentage_good
    expect(result).to eq (2)
  end
end