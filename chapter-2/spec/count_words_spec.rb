require 'count_words'

RSpec.describe 'count_words method' do
  it "counts words in a string if no words" do
    result = count_words("")
    expect(result).to eq "0"
  end

  it "counts words in a string if one word" do
    result = count_words("One")
    expect(result).to eq "1"
  end

  it "counts words in a string if ten words" do
    result = count_words("One Two Three Four Five Six Seven Eight Nine Ten")
    expect(result).to eq "10"
  end
end