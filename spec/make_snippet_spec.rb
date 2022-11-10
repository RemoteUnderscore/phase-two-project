require 'make_snippet'

RSpec.describe 'make_snippet method' do
  it "returns an empty string if no words" do
    result = make_snippet("")
    expect(result).to eq ""
  end

  it "returns string if under five words" do
    result = make_snippet("Once upon a time")
    expect(result).to eq "Once upon a time"
  end

  it "returns five words + "..." if over five words" do
    result = make_snippet("Once upon a time in the West")
    expect(result).to eq "Once upon a time in..."
  end
end
