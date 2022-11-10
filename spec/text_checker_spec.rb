require 'text_checker'

RSpec.describe 'text_checker method' do
  it "returns false if there is no text" do
    result = text_checker("")
    expect(result).to eq false
  end

  it "returns true if text has capital letter and full stop" do
    result = text_checker("Once upon a time.")
    expect(result).to eq true
  end

  it "returns false if text has no capital letter and no full stop" do
    result = text_checker("once upon a time")
    expect(result).to eq false
  end

  it "returns false if text has capital letter but no full stop" do
    result = text_checker("Once upon a time")
    expect(result).to eq false
  end

  it "returns false if text has no capital letter but has a full stop" do
    result = text_checker("once upon a time.")
    expect(result).to eq false
  end

end


