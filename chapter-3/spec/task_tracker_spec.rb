require 'task_tracker'

RSpec.describe 'task_tracker method' do
  it "returns no todo found if no text is input" do
    result = task_tracker("")
    expect(result).to eq "No todo found"
  end

  it "returns no todo found if text does not include '#TODO'" do
    result = task_tracker("Walk the dog")
    expect(result).to eq "No todo found"
  end

  it "returns no todo found if text does not include '#TODO'" do
    result = task_tracker("#TODO Walk the dog")
    expect(result).to eq "Todo found!"
  end
   
  it "returns no todo found if text includes 'TODO'" do
    result = task_tracker("TODO Walk the dog")
    expect(result).to eq "No todo found"
  end
 
end
