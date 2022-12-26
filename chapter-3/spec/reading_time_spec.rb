require 'reading_time'

RSpec.describe 'reading_time method' do
  it "returns 0 if word count is 0" do
    result = reading_time("")
    expect(result).to eq 0
  end

  it "returns 1 if word count is 4" do
    result = reading_time("One " * 4)
    expect(result).to eq 1
  end

  it "returns 1 if word count is 200" do
    result = reading_time("One " * 200)
    expect(result).to eq 1
  end

  it "returns 2 if word count is 201" do
    result = reading_time("One " * 201)
    expect(result).to eq 2
  end

  it "returns 4 if word count is 800" do
    result = reading_time("One " * 800)
    expect(result).to eq 4
  end

  it "returns 50 if word count is 10000" do
    result = reading_time("One " * 10000)
    expect(result).to eq 50
  end

  it "returns 49 if word count is 9799" do
    result = reading_time("One " * 9799)
    expect(result).to eq 49
  end
end
